import 'dart:developer';

import 'package:album_generator/domain/enitites/errors/app_exception.dart';
import 'package:album_generator/domain/repositories/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_command.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState>
    with SideEffectBlocMixin<SignUpState, SignUpCommand> {
  final AuthRepository _authRepository;
  SignUpBloc(
    this._authRepository,
  ) : super(const SignUpState.initial()) {
    on<SignUpClicked>(_onSignUpClicked);
  }

  Future<void> _onSignUpClicked(
    SignUpClicked event,
    Emitter<SignUpState> emit,
  ) async {
    emit(const SignUpState.loading());
    try {
      if (event.password == event.confirmPassword &&
          event.username.isNotEmpty &&
          event.email.isNotEmpty) {
        await _authRepository.emailSignUp(
          event.username,
          event.email,
          event.password,
        );
        produceSideEffect(const SignUpCommand.navToHomePage());
      } else {
        emit(const SignUpState.initial());
        final exception = AppException('Enter valid values');
        produceSideEffect(SignUpCommand.validateEnteredValues(
          error: exception,
        ));
      }
    } on FirebaseAuthException catch (e) {
      log(e.code);
      emit(const SignUpState.initial());
      final exception = AppException(e);
      produceSideEffect(SignUpCommand.validateFirebaseAuth(
        error: exception,
      ));
    }
  }
}
