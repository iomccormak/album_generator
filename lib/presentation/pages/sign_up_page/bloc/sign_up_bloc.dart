import 'dart:developer';

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
  final AuthRepository authRepository;
  SignUpBloc(
    this.authRepository,
  ) : super(const SignUpState.initial()) {
    on<Started>(_onStarted);
    on<SignUpClicked>(_onSignUpClicked);
  }

  Future<void> _onStarted(
    Started event,
    Emitter<SignUpState> emit,
  ) async {
    try {} catch (e) {
      produceSideEffect(const SignUpCommand.error(error: 'Started error'));
    }
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
        await authRepository.emailSignUp(
          event.username,
          event.email,
          event.password,
        );
        produceSideEffect(const SignUpCommand.navToHomePage());
      } else {
        emit(const SignUpState.initial());
        produceSideEffect(const SignUpCommand.validator());
      }
    } on FirebaseAuthException catch (e) {
      emit(const SignUpState.initial());
      produceSideEffect(SignUpCommand.error(error: e.toString()));
    }
  }
}
