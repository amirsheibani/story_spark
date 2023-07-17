import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_spark/features/account/domain/entities/user_entity.dart';

part 'user_data_state.freezed.dart';

@freezed
class UserDataState with _$UserDataState {
  const factory UserDataState.idle() = UserDataStateIdle;

  const factory UserDataState.loading() = UserDataStateLoading;
  const factory UserDataState.success({UserEntity? userEntity, String? message}) = UserDataStateSuccess;

  const factory UserDataState.error({String? message}) = UserDataStateError;
}
