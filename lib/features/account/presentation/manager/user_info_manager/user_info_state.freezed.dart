// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() updateLoading,
    required TResult Function(UserEntity? userEntity, String? message)
        updateSuccess,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? updateLoading,
    TResult? Function(UserEntity? userEntity, String? message)? updateSuccess,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? updateLoading,
    TResult Function(UserEntity? userEntity, String? message)? updateSuccess,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInfoStateIdle value) idle,
    required TResult Function(UserInfoStateUpdateLoading value) updateLoading,
    required TResult Function(UserInfoStateUpdateSuccess value) updateSuccess,
    required TResult Function(UserInfoStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInfoStateIdle value)? idle,
    TResult? Function(UserInfoStateUpdateLoading value)? updateLoading,
    TResult? Function(UserInfoStateUpdateSuccess value)? updateSuccess,
    TResult? Function(UserInfoStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInfoStateIdle value)? idle,
    TResult Function(UserInfoStateUpdateLoading value)? updateLoading,
    TResult Function(UserInfoStateUpdateSuccess value)? updateSuccess,
    TResult Function(UserInfoStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoStateCopyWith<$Res> {
  factory $UserInfoStateCopyWith(
          UserInfoState value, $Res Function(UserInfoState) then) =
      _$UserInfoStateCopyWithImpl<$Res, UserInfoState>;
}

/// @nodoc
class _$UserInfoStateCopyWithImpl<$Res, $Val extends UserInfoState>
    implements $UserInfoStateCopyWith<$Res> {
  _$UserInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserInfoStateIdleCopyWith<$Res> {
  factory _$$UserInfoStateIdleCopyWith(
          _$UserInfoStateIdle value, $Res Function(_$UserInfoStateIdle) then) =
      __$$UserInfoStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserInfoStateIdleCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res, _$UserInfoStateIdle>
    implements _$$UserInfoStateIdleCopyWith<$Res> {
  __$$UserInfoStateIdleCopyWithImpl(
      _$UserInfoStateIdle _value, $Res Function(_$UserInfoStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserInfoStateIdle implements UserInfoStateIdle {
  const _$UserInfoStateIdle();

  @override
  String toString() {
    return 'UserInfoState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserInfoStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() updateLoading,
    required TResult Function(UserEntity? userEntity, String? message)
        updateSuccess,
    required TResult Function(String? message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? updateLoading,
    TResult? Function(UserEntity? userEntity, String? message)? updateSuccess,
    TResult? Function(String? message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? updateLoading,
    TResult Function(UserEntity? userEntity, String? message)? updateSuccess,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInfoStateIdle value) idle,
    required TResult Function(UserInfoStateUpdateLoading value) updateLoading,
    required TResult Function(UserInfoStateUpdateSuccess value) updateSuccess,
    required TResult Function(UserInfoStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInfoStateIdle value)? idle,
    TResult? Function(UserInfoStateUpdateLoading value)? updateLoading,
    TResult? Function(UserInfoStateUpdateSuccess value)? updateSuccess,
    TResult? Function(UserInfoStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInfoStateIdle value)? idle,
    TResult Function(UserInfoStateUpdateLoading value)? updateLoading,
    TResult Function(UserInfoStateUpdateSuccess value)? updateSuccess,
    TResult Function(UserInfoStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class UserInfoStateIdle implements UserInfoState {
  const factory UserInfoStateIdle() = _$UserInfoStateIdle;
}

/// @nodoc
abstract class _$$UserInfoStateUpdateLoadingCopyWith<$Res> {
  factory _$$UserInfoStateUpdateLoadingCopyWith(
          _$UserInfoStateUpdateLoading value,
          $Res Function(_$UserInfoStateUpdateLoading) then) =
      __$$UserInfoStateUpdateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserInfoStateUpdateLoadingCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res, _$UserInfoStateUpdateLoading>
    implements _$$UserInfoStateUpdateLoadingCopyWith<$Res> {
  __$$UserInfoStateUpdateLoadingCopyWithImpl(
      _$UserInfoStateUpdateLoading _value,
      $Res Function(_$UserInfoStateUpdateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserInfoStateUpdateLoading implements UserInfoStateUpdateLoading {
  const _$UserInfoStateUpdateLoading();

  @override
  String toString() {
    return 'UserInfoState.updateLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoStateUpdateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() updateLoading,
    required TResult Function(UserEntity? userEntity, String? message)
        updateSuccess,
    required TResult Function(String? message) error,
  }) {
    return updateLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? updateLoading,
    TResult? Function(UserEntity? userEntity, String? message)? updateSuccess,
    TResult? Function(String? message)? error,
  }) {
    return updateLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? updateLoading,
    TResult Function(UserEntity? userEntity, String? message)? updateSuccess,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (updateLoading != null) {
      return updateLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInfoStateIdle value) idle,
    required TResult Function(UserInfoStateUpdateLoading value) updateLoading,
    required TResult Function(UserInfoStateUpdateSuccess value) updateSuccess,
    required TResult Function(UserInfoStateError value) error,
  }) {
    return updateLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInfoStateIdle value)? idle,
    TResult? Function(UserInfoStateUpdateLoading value)? updateLoading,
    TResult? Function(UserInfoStateUpdateSuccess value)? updateSuccess,
    TResult? Function(UserInfoStateError value)? error,
  }) {
    return updateLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInfoStateIdle value)? idle,
    TResult Function(UserInfoStateUpdateLoading value)? updateLoading,
    TResult Function(UserInfoStateUpdateSuccess value)? updateSuccess,
    TResult Function(UserInfoStateError value)? error,
    required TResult orElse(),
  }) {
    if (updateLoading != null) {
      return updateLoading(this);
    }
    return orElse();
  }
}

abstract class UserInfoStateUpdateLoading implements UserInfoState {
  const factory UserInfoStateUpdateLoading() = _$UserInfoStateUpdateLoading;
}

/// @nodoc
abstract class _$$UserInfoStateUpdateSuccessCopyWith<$Res> {
  factory _$$UserInfoStateUpdateSuccessCopyWith(
          _$UserInfoStateUpdateSuccess value,
          $Res Function(_$UserInfoStateUpdateSuccess) then) =
      __$$UserInfoStateUpdateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity? userEntity, String? message});
}

/// @nodoc
class __$$UserInfoStateUpdateSuccessCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res, _$UserInfoStateUpdateSuccess>
    implements _$$UserInfoStateUpdateSuccessCopyWith<$Res> {
  __$$UserInfoStateUpdateSuccessCopyWithImpl(
      _$UserInfoStateUpdateSuccess _value,
      $Res Function(_$UserInfoStateUpdateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEntity = freezed,
    Object? message = freezed,
  }) {
    return _then(_$UserInfoStateUpdateSuccess(
      userEntity: freezed == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserInfoStateUpdateSuccess implements UserInfoStateUpdateSuccess {
  const _$UserInfoStateUpdateSuccess({this.userEntity, this.message});

  @override
  final UserEntity? userEntity;
  @override
  final String? message;

  @override
  String toString() {
    return 'UserInfoState.updateSuccess(userEntity: $userEntity, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoStateUpdateSuccess &&
            (identical(other.userEntity, userEntity) ||
                other.userEntity == userEntity) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userEntity, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoStateUpdateSuccessCopyWith<_$UserInfoStateUpdateSuccess>
      get copyWith => __$$UserInfoStateUpdateSuccessCopyWithImpl<
          _$UserInfoStateUpdateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() updateLoading,
    required TResult Function(UserEntity? userEntity, String? message)
        updateSuccess,
    required TResult Function(String? message) error,
  }) {
    return updateSuccess(userEntity, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? updateLoading,
    TResult? Function(UserEntity? userEntity, String? message)? updateSuccess,
    TResult? Function(String? message)? error,
  }) {
    return updateSuccess?.call(userEntity, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? updateLoading,
    TResult Function(UserEntity? userEntity, String? message)? updateSuccess,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(userEntity, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInfoStateIdle value) idle,
    required TResult Function(UserInfoStateUpdateLoading value) updateLoading,
    required TResult Function(UserInfoStateUpdateSuccess value) updateSuccess,
    required TResult Function(UserInfoStateError value) error,
  }) {
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInfoStateIdle value)? idle,
    TResult? Function(UserInfoStateUpdateLoading value)? updateLoading,
    TResult? Function(UserInfoStateUpdateSuccess value)? updateSuccess,
    TResult? Function(UserInfoStateError value)? error,
  }) {
    return updateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInfoStateIdle value)? idle,
    TResult Function(UserInfoStateUpdateLoading value)? updateLoading,
    TResult Function(UserInfoStateUpdateSuccess value)? updateSuccess,
    TResult Function(UserInfoStateError value)? error,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class UserInfoStateUpdateSuccess implements UserInfoState {
  const factory UserInfoStateUpdateSuccess(
      {final UserEntity? userEntity,
      final String? message}) = _$UserInfoStateUpdateSuccess;

  UserEntity? get userEntity;
  String? get message;
  @JsonKey(ignore: true)
  _$$UserInfoStateUpdateSuccessCopyWith<_$UserInfoStateUpdateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserInfoStateErrorCopyWith<$Res> {
  factory _$$UserInfoStateErrorCopyWith(_$UserInfoStateError value,
          $Res Function(_$UserInfoStateError) then) =
      __$$UserInfoStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UserInfoStateErrorCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res, _$UserInfoStateError>
    implements _$$UserInfoStateErrorCopyWith<$Res> {
  __$$UserInfoStateErrorCopyWithImpl(
      _$UserInfoStateError _value, $Res Function(_$UserInfoStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UserInfoStateError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserInfoStateError implements UserInfoStateError {
  const _$UserInfoStateError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'UserInfoState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoStateErrorCopyWith<_$UserInfoStateError> get copyWith =>
      __$$UserInfoStateErrorCopyWithImpl<_$UserInfoStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() updateLoading,
    required TResult Function(UserEntity? userEntity, String? message)
        updateSuccess,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? updateLoading,
    TResult? Function(UserEntity? userEntity, String? message)? updateSuccess,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? updateLoading,
    TResult Function(UserEntity? userEntity, String? message)? updateSuccess,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInfoStateIdle value) idle,
    required TResult Function(UserInfoStateUpdateLoading value) updateLoading,
    required TResult Function(UserInfoStateUpdateSuccess value) updateSuccess,
    required TResult Function(UserInfoStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInfoStateIdle value)? idle,
    TResult? Function(UserInfoStateUpdateLoading value)? updateLoading,
    TResult? Function(UserInfoStateUpdateSuccess value)? updateSuccess,
    TResult? Function(UserInfoStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInfoStateIdle value)? idle,
    TResult Function(UserInfoStateUpdateLoading value)? updateLoading,
    TResult Function(UserInfoStateUpdateSuccess value)? updateSuccess,
    TResult Function(UserInfoStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserInfoStateError implements UserInfoState {
  const factory UserInfoStateError({final String? message}) =
      _$UserInfoStateError;

  String? get message;
  @JsonKey(ignore: true)
  _$$UserInfoStateErrorCopyWith<_$UserInfoStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
