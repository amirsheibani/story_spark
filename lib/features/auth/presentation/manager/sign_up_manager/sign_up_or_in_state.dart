import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_or_in_state.freezed.dart';

@freezed
class SignUpOrInState with _$SignUpOrInState {
  const factory SignUpOrInState.idle() = SignUpOrInStateIdle;

  const factory SignUpOrInState.signIn() = NavigationStateSignIn;
  const factory SignUpOrInState.signUp() = NavigationStateSignUp;
  const factory SignUpOrInState.profile() = NavigationStateProfile;

  const factory SignUpOrInState.error({String? message}) = SignUpOrInStateError;
}
