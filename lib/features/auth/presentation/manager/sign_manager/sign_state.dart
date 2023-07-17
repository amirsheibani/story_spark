import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_spark/features/auth/domain/entities/sign_in_response_entity.dart';

part 'sign_state.freezed.dart';

@freezed
class SignState with _$SignState {
  const factory SignState.idle() = SignStateIdle;

  const factory SignState.signInLoading() = SignInStateLoading;
  const factory SignState.signInSuccess({SignInResponseEntity? signInResponseEntity}) = SignInStateSuccess;

  const factory SignState.signUpLoading() = SignUpStateLoading;
  const factory SignState.signUpSuccess() = SignUpStateSuccess;

  const factory SignState.error({String? message}) = SignStateError;
}
