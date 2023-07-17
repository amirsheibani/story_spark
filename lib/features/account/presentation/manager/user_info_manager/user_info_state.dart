import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_spark/features/account/domain/entities/user_entity.dart';

part 'user_info_state.freezed.dart';

@freezed
class UserInfoState with _$UserInfoState {
  const factory UserInfoState.idle() = UserInfoStateIdle;

  const factory UserInfoState.updateLoading() = UserInfoStateUpdateLoading;
  const factory UserInfoState.updateSuccess({UserEntity? userEntity, String? message}) = UserInfoStateUpdateSuccess;

  const factory UserInfoState.error({String? message}) = UserInfoStateError;
}
