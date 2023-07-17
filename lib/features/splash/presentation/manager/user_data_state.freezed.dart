// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(UserEntity? userEntity, String? message) success,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(UserEntity? userEntity, String? message)? success,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(UserEntity? userEntity, String? message)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDataStateIdle value) idle,
    required TResult Function(UserDataStateLoading value) loading,
    required TResult Function(UserDataStateSuccess value) success,
    required TResult Function(UserDataStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserDataStateIdle value)? idle,
    TResult? Function(UserDataStateLoading value)? loading,
    TResult? Function(UserDataStateSuccess value)? success,
    TResult? Function(UserDataStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataStateIdle value)? idle,
    TResult Function(UserDataStateLoading value)? loading,
    TResult Function(UserDataStateSuccess value)? success,
    TResult Function(UserDataStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataStateCopyWith<$Res> {
  factory $UserDataStateCopyWith(
          UserDataState value, $Res Function(UserDataState) then) =
      _$UserDataStateCopyWithImpl<$Res, UserDataState>;
}

/// @nodoc
class _$UserDataStateCopyWithImpl<$Res, $Val extends UserDataState>
    implements $UserDataStateCopyWith<$Res> {
  _$UserDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserDataStateIdleCopyWith<$Res> {
  factory _$$UserDataStateIdleCopyWith(
          _$UserDataStateIdle value, $Res Function(_$UserDataStateIdle) then) =
      __$$UserDataStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserDataStateIdleCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res, _$UserDataStateIdle>
    implements _$$UserDataStateIdleCopyWith<$Res> {
  __$$UserDataStateIdleCopyWithImpl(
      _$UserDataStateIdle _value, $Res Function(_$UserDataStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserDataStateIdle implements UserDataStateIdle {
  const _$UserDataStateIdle();

  @override
  String toString() {
    return 'UserDataState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserDataStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(UserEntity? userEntity, String? message) success,
    required TResult Function(String? message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(UserEntity? userEntity, String? message)? success,
    TResult? Function(String? message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(UserEntity? userEntity, String? message)? success,
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
    required TResult Function(UserDataStateIdle value) idle,
    required TResult Function(UserDataStateLoading value) loading,
    required TResult Function(UserDataStateSuccess value) success,
    required TResult Function(UserDataStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserDataStateIdle value)? idle,
    TResult? Function(UserDataStateLoading value)? loading,
    TResult? Function(UserDataStateSuccess value)? success,
    TResult? Function(UserDataStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataStateIdle value)? idle,
    TResult Function(UserDataStateLoading value)? loading,
    TResult Function(UserDataStateSuccess value)? success,
    TResult Function(UserDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class UserDataStateIdle implements UserDataState {
  const factory UserDataStateIdle() = _$UserDataStateIdle;
}

/// @nodoc
abstract class _$$UserDataStateLoadingCopyWith<$Res> {
  factory _$$UserDataStateLoadingCopyWith(_$UserDataStateLoading value,
          $Res Function(_$UserDataStateLoading) then) =
      __$$UserDataStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserDataStateLoadingCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res, _$UserDataStateLoading>
    implements _$$UserDataStateLoadingCopyWith<$Res> {
  __$$UserDataStateLoadingCopyWithImpl(_$UserDataStateLoading _value,
      $Res Function(_$UserDataStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserDataStateLoading implements UserDataStateLoading {
  const _$UserDataStateLoading();

  @override
  String toString() {
    return 'UserDataState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserDataStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(UserEntity? userEntity, String? message) success,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(UserEntity? userEntity, String? message)? success,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(UserEntity? userEntity, String? message)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDataStateIdle value) idle,
    required TResult Function(UserDataStateLoading value) loading,
    required TResult Function(UserDataStateSuccess value) success,
    required TResult Function(UserDataStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserDataStateIdle value)? idle,
    TResult? Function(UserDataStateLoading value)? loading,
    TResult? Function(UserDataStateSuccess value)? success,
    TResult? Function(UserDataStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataStateIdle value)? idle,
    TResult Function(UserDataStateLoading value)? loading,
    TResult Function(UserDataStateSuccess value)? success,
    TResult Function(UserDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserDataStateLoading implements UserDataState {
  const factory UserDataStateLoading() = _$UserDataStateLoading;
}

/// @nodoc
abstract class _$$UserDataStateSuccessCopyWith<$Res> {
  factory _$$UserDataStateSuccessCopyWith(_$UserDataStateSuccess value,
          $Res Function(_$UserDataStateSuccess) then) =
      __$$UserDataStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity? userEntity, String? message});
}

/// @nodoc
class __$$UserDataStateSuccessCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res, _$UserDataStateSuccess>
    implements _$$UserDataStateSuccessCopyWith<$Res> {
  __$$UserDataStateSuccessCopyWithImpl(_$UserDataStateSuccess _value,
      $Res Function(_$UserDataStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEntity = freezed,
    Object? message = freezed,
  }) {
    return _then(_$UserDataStateSuccess(
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

class _$UserDataStateSuccess implements UserDataStateSuccess {
  const _$UserDataStateSuccess({this.userEntity, this.message});

  @override
  final UserEntity? userEntity;
  @override
  final String? message;

  @override
  String toString() {
    return 'UserDataState.success(userEntity: $userEntity, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataStateSuccess &&
            (identical(other.userEntity, userEntity) ||
                other.userEntity == userEntity) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userEntity, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataStateSuccessCopyWith<_$UserDataStateSuccess> get copyWith =>
      __$$UserDataStateSuccessCopyWithImpl<_$UserDataStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(UserEntity? userEntity, String? message) success,
    required TResult Function(String? message) error,
  }) {
    return success(userEntity, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(UserEntity? userEntity, String? message)? success,
    TResult? Function(String? message)? error,
  }) {
    return success?.call(userEntity, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(UserEntity? userEntity, String? message)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userEntity, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDataStateIdle value) idle,
    required TResult Function(UserDataStateLoading value) loading,
    required TResult Function(UserDataStateSuccess value) success,
    required TResult Function(UserDataStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserDataStateIdle value)? idle,
    TResult? Function(UserDataStateLoading value)? loading,
    TResult? Function(UserDataStateSuccess value)? success,
    TResult? Function(UserDataStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataStateIdle value)? idle,
    TResult Function(UserDataStateLoading value)? loading,
    TResult Function(UserDataStateSuccess value)? success,
    TResult Function(UserDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UserDataStateSuccess implements UserDataState {
  const factory UserDataStateSuccess(
      {final UserEntity? userEntity,
      final String? message}) = _$UserDataStateSuccess;

  UserEntity? get userEntity;
  String? get message;
  @JsonKey(ignore: true)
  _$$UserDataStateSuccessCopyWith<_$UserDataStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDataStateErrorCopyWith<$Res> {
  factory _$$UserDataStateErrorCopyWith(_$UserDataStateError value,
          $Res Function(_$UserDataStateError) then) =
      __$$UserDataStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UserDataStateErrorCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res, _$UserDataStateError>
    implements _$$UserDataStateErrorCopyWith<$Res> {
  __$$UserDataStateErrorCopyWithImpl(
      _$UserDataStateError _value, $Res Function(_$UserDataStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UserDataStateError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserDataStateError implements UserDataStateError {
  const _$UserDataStateError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'UserDataState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataStateErrorCopyWith<_$UserDataStateError> get copyWith =>
      __$$UserDataStateErrorCopyWithImpl<_$UserDataStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(UserEntity? userEntity, String? message) success,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(UserEntity? userEntity, String? message)? success,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(UserEntity? userEntity, String? message)? success,
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
    required TResult Function(UserDataStateIdle value) idle,
    required TResult Function(UserDataStateLoading value) loading,
    required TResult Function(UserDataStateSuccess value) success,
    required TResult Function(UserDataStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserDataStateIdle value)? idle,
    TResult? Function(UserDataStateLoading value)? loading,
    TResult? Function(UserDataStateSuccess value)? success,
    TResult? Function(UserDataStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataStateIdle value)? idle,
    TResult Function(UserDataStateLoading value)? loading,
    TResult Function(UserDataStateSuccess value)? success,
    TResult Function(UserDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserDataStateError implements UserDataState {
  const factory UserDataStateError({final String? message}) =
      _$UserDataStateError;

  String? get message;
  @JsonKey(ignore: true)
  _$$UserDataStateErrorCopyWith<_$UserDataStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
