part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = Initial;
  const factory SignUpState.loading() = Loading;
}
