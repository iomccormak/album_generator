import 'dart:developer';

import 'package:album_generator/domain/enitites/errors/app_exception.dart';
import 'package:album_generator/domain/repositories/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_command.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState>
    with SideEffectBlocMixin<SignInState, SignInCommand> {
  final AuthRepository _authRepository;

  SignInBloc(this._authRepository) : super(const SignInState.initial()) {
    on<SignInClicked>(_onSignInClicked);
  }

  Future<void> _onSignInClicked(
    SignInClicked event,
    Emitter<SignInState> emit,
  ) async {
    emit(const SignInState.loading());
    try {
      if (event.email.isNotEmpty && event.password.isNotEmpty) {
        await _authRepository.emailSignIn(
          event.email,
          event.password,
        );
        produceSideEffect(const SignInCommand.navToHomePage());
      } else {
        emit(const SignInState.initial());
        final exception = AppException('Enter valid values');
        produceSideEffect(SignInCommand.validateEnteredValues(
          error: exception,
        ));
      }
    } on FirebaseAuthException catch (e) {
      log(e.code);
      emit(const SignInState.initial());
      final exception = AppException(e);
      produceSideEffect(SignInCommand.validateFirebaseAuth(
        error: exception,
      ));
    }
  }
}
