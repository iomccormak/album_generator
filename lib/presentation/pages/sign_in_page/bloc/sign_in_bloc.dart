import 'package:album_generator/domain/repositories/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_command.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState>
    with SideEffectBlocMixin<SignInState, SignInCommand> {
  final AuthRepository authRepository;

  SignInBloc(this.authRepository) : super(const SignInState.initial()) {
    on<Started>(_onStarted);
    on<SignInClicked>(_onSignInClicked);
  }

  Future<void> _onStarted(
    Started event,
    Emitter<SignInState> emit,
  ) async {
    try {} catch (e) {
      produceSideEffect(const SignInCommand.error(error: 'Started error'));
    }
  }

  Future<void> _onSignInClicked(
    SignInClicked event,
    Emitter<SignInState> emit,
  ) async {
    emit(const SignInState.loading());
    try {
      if (event.email.isNotEmpty) {
        await authRepository.emailSignIn(
          event.email,
          event.password,
        );
        produceSideEffect(const SignInCommand.navToHomePage());
      } else {
        emit(const SignInState.initial());
        produceSideEffect(const SignInCommand.validator());
      }
    } on FirebaseAuthException catch (e) {
      emit(const SignInState.initial());
      produceSideEffect(SignInCommand.error(error: e.toString()));
    }
  }
}
