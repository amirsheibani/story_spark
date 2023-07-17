// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() signInLoading,
    required TResult Function(SignInResponseEntity? signInResponseEntity)
        signInSuccess,
    required TResult Function() signUpLoading,
    required TResult Function() signUpSuccess,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? signInLoading,
    TResult? Function(SignInResponseEntity? signInResponseEntity)?
        signInSuccess,
    TResult? Function()? signUpLoading,
    TResult? Function()? signUpSuccess,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? signInLoading,
    TResult Function(SignInResponseEntity? signInResponseEntity)? signInSuccess,
    TResult Function()? signUpLoading,
    TResult Function()? signUpSuccess,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignStateIdle value) idle,
    required TResult Function(SignInStateLoading value) signInLoading,
    required TResult Function(SignInStateSuccess value) signInSuccess,
    required TResult Function(SignUpStateLoading value) signUpLoading,
    required TResult Function(SignUpStateSuccess value) signUpSuccess,
    required TResult Function(SignStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignStateIdle value)? idle,
    TResult? Function(SignInStateLoading value)? signInLoading,
    TResult? Function(SignInStateSuccess value)? signInSuccess,
    TResult? Function(SignUpStateLoading value)? signUpLoading,
    TResult? Function(SignUpStateSuccess value)? signUpSuccess,
    TResult? Function(SignStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignStateIdle value)? idle,
    TResult Function(SignInStateLoading value)? signInLoading,
    TResult Function(SignInStateSuccess value)? signInSuccess,
    TResult Function(SignUpStateLoading value)? signUpLoading,
    TResult Function(SignUpStateSuccess value)? signUpSuccess,
    TResult Function(SignStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignStateCopyWith<$Res> {
  factory $SignStateCopyWith(SignState value, $Res Function(SignState) then) =
      _$SignStateCopyWithImpl<$Res, SignState>;
}

/// @nodoc
class _$SignStateCopyWithImpl<$Res, $Val extends SignState>
    implements $SignStateCopyWith<$Res> {
  _$SignStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignStateIdleCopyWith<$Res> {
  factory _$$SignStateIdleCopyWith(
          _$SignStateIdle value, $Res Function(_$SignStateIdle) then) =
      __$$SignStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignStateIdleCopyWithImpl<$Res>
    extends _$SignStateCopyWithImpl<$Res, _$SignStateIdle>
    implements _$$SignStateIdleCopyWith<$Res> {
  __$$SignStateIdleCopyWithImpl(
      _$SignStateIdle _value, $Res Function(_$SignStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignStateIdle implements SignStateIdle {
  const _$SignStateIdle();

  @override
  String toString() {
    return 'SignState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() signInLoading,
    required TResult Function(SignInResponseEntity? signInResponseEntity)
        signInSuccess,
    required TResult Function() signUpLoading,
    required TResult Function() signUpSuccess,
    required TResult Function(String? message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? signInLoading,
    TResult? Function(SignInResponseEntity? signInResponseEntity)?
        signInSuccess,
    TResult? Function()? signUpLoading,
    TResult? Function()? signUpSuccess,
    TResult? Function(String? message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? signInLoading,
    TResult Function(SignInResponseEntity? signInResponseEntity)? signInSuccess,
    TResult Function()? signUpLoading,
    TResult Function()? signUpSuccess,
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
    required TResult Function(SignStateIdle value) idle,
    required TResult Function(SignInStateLoading value) signInLoading,
    required TResult Function(SignInStateSuccess value) signInSuccess,
    required TResult Function(SignUpStateLoading value) signUpLoading,
    required TResult Function(SignUpStateSuccess value) signUpSuccess,
    required TResult Function(SignStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignStateIdle value)? idle,
    TResult? Function(SignInStateLoading value)? signInLoading,
    TResult? Function(SignInStateSuccess value)? signInSuccess,
    TResult? Function(SignUpStateLoading value)? signUpLoading,
    TResult? Function(SignUpStateSuccess value)? signUpSuccess,
    TResult? Function(SignStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignStateIdle value)? idle,
    TResult Function(SignInStateLoading value)? signInLoading,
    TResult Function(SignInStateSuccess value)? signInSuccess,
    TResult Function(SignUpStateLoading value)? signUpLoading,
    TResult Function(SignUpStateSuccess value)? signUpSuccess,
    TResult Function(SignStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class SignStateIdle implements SignState {
  const factory SignStateIdle() = _$SignStateIdle;
}

/// @nodoc
abstract class _$$SignInStateLoadingCopyWith<$Res> {
  factory _$$SignInStateLoadingCopyWith(_$SignInStateLoading value,
          $Res Function(_$SignInStateLoading) then) =
      __$$SignInStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInStateLoadingCopyWithImpl<$Res>
    extends _$SignStateCopyWithImpl<$Res, _$SignInStateLoading>
    implements _$$SignInStateLoadingCopyWith<$Res> {
  __$$SignInStateLoadingCopyWithImpl(
      _$SignInStateLoading _value, $Res Function(_$SignInStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInStateLoading implements SignInStateLoading {
  const _$SignInStateLoading();

  @override
  String toString() {
    return 'SignState.signInLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() signInLoading,
    required TResult Function(SignInResponseEntity? signInResponseEntity)
        signInSuccess,
    required TResult Function() signUpLoading,
    required TResult Function() signUpSuccess,
    required TResult Function(String? message) error,
  }) {
    return signInLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? signInLoading,
    TResult? Function(SignInResponseEntity? signInResponseEntity)?
        signInSuccess,
    TResult? Function()? signUpLoading,
    TResult? Function()? signUpSuccess,
    TResult? Function(String? message)? error,
  }) {
    return signInLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? signInLoading,
    TResult Function(SignInResponseEntity? signInResponseEntity)? signInSuccess,
    TResult Function()? signUpLoading,
    TResult Function()? signUpSuccess,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (signInLoading != null) {
      return signInLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignStateIdle value) idle,
    required TResult Function(SignInStateLoading value) signInLoading,
    required TResult Function(SignInStateSuccess value) signInSuccess,
    required TResult Function(SignUpStateLoading value) signUpLoading,
    required TResult Function(SignUpStateSuccess value) signUpSuccess,
    required TResult Function(SignStateError value) error,
  }) {
    return signInLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignStateIdle value)? idle,
    TResult? Function(SignInStateLoading value)? signInLoading,
    TResult? Function(SignInStateSuccess value)? signInSuccess,
    TResult? Function(SignUpStateLoading value)? signUpLoading,
    TResult? Function(SignUpStateSuccess value)? signUpSuccess,
    TResult? Function(SignStateError value)? error,
  }) {
    return signInLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignStateIdle value)? idle,
    TResult Function(SignInStateLoading value)? signInLoading,
    TResult Function(SignInStateSuccess value)? signInSuccess,
    TResult Function(SignUpStateLoading value)? signUpLoading,
    TResult Function(SignUpStateSuccess value)? signUpSuccess,
    TResult Function(SignStateError value)? error,
    required TResult orElse(),
  }) {
    if (signInLoading != null) {
      return signInLoading(this);
    }
    return orElse();
  }
}

abstract class SignInStateLoading implements SignState {
  const factory SignInStateLoading() = _$SignInStateLoading;
}

/// @nodoc
abstract class _$$SignInStateSuccessCopyWith<$Res> {
  factory _$$SignInStateSuccessCopyWith(_$SignInStateSuccess value,
          $Res Function(_$SignInStateSuccess) then) =
      __$$SignInStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInResponseEntity? signInResponseEntity});
}

/// @nodoc
class __$$SignInStateSuccessCopyWithImpl<$Res>
    extends _$SignStateCopyWithImpl<$Res, _$SignInStateSuccess>
    implements _$$SignInStateSuccessCopyWith<$Res> {
  __$$SignInStateSuccessCopyWithImpl(
      _$SignInStateSuccess _value, $Res Function(_$SignInStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInResponseEntity = freezed,
  }) {
    return _then(_$SignInStateSuccess(
      signInResponseEntity: freezed == signInResponseEntity
          ? _value.signInResponseEntity
          : signInResponseEntity // ignore: cast_nullable_to_non_nullable
              as SignInResponseEntity?,
    ));
  }
}

/// @nodoc

class _$SignInStateSuccess implements SignInStateSuccess {
  const _$SignInStateSuccess({this.signInResponseEntity});

  @override
  final SignInResponseEntity? signInResponseEntity;

  @override
  String toString() {
    return 'SignState.signInSuccess(signInResponseEntity: $signInResponseEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateSuccess &&
            (identical(other.signInResponseEntity, signInResponseEntity) ||
                other.signInResponseEntity == signInResponseEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInResponseEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateSuccessCopyWith<_$SignInStateSuccess> get copyWith =>
      __$$SignInStateSuccessCopyWithImpl<_$SignInStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() signInLoading,
    required TResult Function(SignInResponseEntity? signInResponseEntity)
        signInSuccess,
    required TResult Function() signUpLoading,
    required TResult Function() signUpSuccess,
    required TResult Function(String? message) error,
  }) {
    return signInSuccess(signInResponseEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? signInLoading,
    TResult? Function(SignInResponseEntity? signInResponseEntity)?
        signInSuccess,
    TResult? Function()? signUpLoading,
    TResult? Function()? signUpSuccess,
    TResult? Function(String? message)? error,
  }) {
    return signInSuccess?.call(signInResponseEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? signInLoading,
    TResult Function(SignInResponseEntity? signInResponseEntity)? signInSuccess,
    TResult Function()? signUpLoading,
    TResult Function()? signUpSuccess,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (signInSuccess != null) {
      return signInSuccess(signInResponseEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignStateIdle value) idle,
    required TResult Function(SignInStateLoading value) signInLoading,
    required TResult Function(SignInStateSuccess value) signInSuccess,
    required TResult Function(SignUpStateLoading value) signUpLoading,
    required TResult Function(SignUpStateSuccess value) signUpSuccess,
    required TResult Function(SignStateError value) error,
  }) {
    return signInSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignStateIdle value)? idle,
    TResult? Function(SignInStateLoading value)? signInLoading,
    TResult? Function(SignInStateSuccess value)? signInSuccess,
    TResult? Function(SignUpStateLoading value)? signUpLoading,
    TResult? Function(SignUpStateSuccess value)? signUpSuccess,
    TResult? Function(SignStateError value)? error,
  }) {
    return signInSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignStateIdle value)? idle,
    TResult Function(SignInStateLoading value)? signInLoading,
    TResult Function(SignInStateSuccess value)? signInSuccess,
    TResult Function(SignUpStateLoading value)? signUpLoading,
    TResult Function(SignUpStateSuccess value)? signUpSuccess,
    TResult Function(SignStateError value)? error,
    required TResult orElse(),
  }) {
    if (signInSuccess != null) {
      return signInSuccess(this);
    }
    return orElse();
  }
}

abstract class SignInStateSuccess implements SignState {
  const factory SignInStateSuccess(
          {final SignInResponseEntity? signInResponseEntity}) =
      _$SignInStateSuccess;

  SignInResponseEntity? get signInResponseEntity;
  @JsonKey(ignore: true)
  _$$SignInStateSuccessCopyWith<_$SignInStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpStateLoadingCopyWith<$Res> {
  factory _$$SignUpStateLoadingCopyWith(_$SignUpStateLoading value,
          $Res Function(_$SignUpStateLoading) then) =
      __$$SignUpStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateLoadingCopyWithImpl<$Res>
    extends _$SignStateCopyWithImpl<$Res, _$SignUpStateLoading>
    implements _$$SignUpStateLoadingCopyWith<$Res> {
  __$$SignUpStateLoadingCopyWithImpl(
      _$SignUpStateLoading _value, $Res Function(_$SignUpStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpStateLoading implements SignUpStateLoading {
  const _$SignUpStateLoading();

  @override
  String toString() {
    return 'SignState.signUpLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() signInLoading,
    required TResult Function(SignInResponseEntity? signInResponseEntity)
        signInSuccess,
    required TResult Function() signUpLoading,
    required TResult Function() signUpSuccess,
    required TResult Function(String? message) error,
  }) {
    return signUpLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? signInLoading,
    TResult? Function(SignInResponseEntity? signInResponseEntity)?
        signInSuccess,
    TResult? Function()? signUpLoading,
    TResult? Function()? signUpSuccess,
    TResult? Function(String? message)? error,
  }) {
    return signUpLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? signInLoading,
    TResult Function(SignInResponseEntity? signInResponseEntity)? signInSuccess,
    TResult Function()? signUpLoading,
    TResult Function()? signUpSuccess,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (signUpLoading != null) {
      return signUpLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignStateIdle value) idle,
    required TResult Function(SignInStateLoading value) signInLoading,
    required TResult Function(SignInStateSuccess value) signInSuccess,
    required TResult Function(SignUpStateLoading value) signUpLoading,
    required TResult Function(SignUpStateSuccess value) signUpSuccess,
    required TResult Function(SignStateError value) error,
  }) {
    return signUpLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignStateIdle value)? idle,
    TResult? Function(SignInStateLoading value)? signInLoading,
    TResult? Function(SignInStateSuccess value)? signInSuccess,
    TResult? Function(SignUpStateLoading value)? signUpLoading,
    TResult? Function(SignUpStateSuccess value)? signUpSuccess,
    TResult? Function(SignStateError value)? error,
  }) {
    return signUpLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignStateIdle value)? idle,
    TResult Function(SignInStateLoading value)? signInLoading,
    TResult Function(SignInStateSuccess value)? signInSuccess,
    TResult Function(SignUpStateLoading value)? signUpLoading,
    TResult Function(SignUpStateSuccess value)? signUpSuccess,
    TResult Function(SignStateError value)? error,
    required TResult orElse(),
  }) {
    if (signUpLoading != null) {
      return signUpLoading(this);
    }
    return orElse();
  }
}

abstract class SignUpStateLoading implements SignState {
  const factory SignUpStateLoading() = _$SignUpStateLoading;
}

/// @nodoc
abstract class _$$SignUpStateSuccessCopyWith<$Res> {
  factory _$$SignUpStateSuccessCopyWith(_$SignUpStateSuccess value,
          $Res Function(_$SignUpStateSuccess) then) =
      __$$SignUpStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateSuccessCopyWithImpl<$Res>
    extends _$SignStateCopyWithImpl<$Res, _$SignUpStateSuccess>
    implements _$$SignUpStateSuccessCopyWith<$Res> {
  __$$SignUpStateSuccessCopyWithImpl(
      _$SignUpStateSuccess _value, $Res Function(_$SignUpStateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpStateSuccess implements SignUpStateSuccess {
  const _$SignUpStateSuccess();

  @override
  String toString() {
    return 'SignState.signUpSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() signInLoading,
    required TResult Function(SignInResponseEntity? signInResponseEntity)
        signInSuccess,
    required TResult Function() signUpLoading,
    required TResult Function() signUpSuccess,
    required TResult Function(String? message) error,
  }) {
    return signUpSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? signInLoading,
    TResult? Function(SignInResponseEntity? signInResponseEntity)?
        signInSuccess,
    TResult? Function()? signUpLoading,
    TResult? Function()? signUpSuccess,
    TResult? Function(String? message)? error,
  }) {
    return signUpSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? signInLoading,
    TResult Function(SignInResponseEntity? signInResponseEntity)? signInSuccess,
    TResult Function()? signUpLoading,
    TResult Function()? signUpSuccess,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignStateIdle value) idle,
    required TResult Function(SignInStateLoading value) signInLoading,
    required TResult Function(SignInStateSuccess value) signInSuccess,
    required TResult Function(SignUpStateLoading value) signUpLoading,
    required TResult Function(SignUpStateSuccess value) signUpSuccess,
    required TResult Function(SignStateError value) error,
  }) {
    return signUpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignStateIdle value)? idle,
    TResult? Function(SignInStateLoading value)? signInLoading,
    TResult? Function(SignInStateSuccess value)? signInSuccess,
    TResult? Function(SignUpStateLoading value)? signUpLoading,
    TResult? Function(SignUpStateSuccess value)? signUpSuccess,
    TResult? Function(SignStateError value)? error,
  }) {
    return signUpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignStateIdle value)? idle,
    TResult Function(SignInStateLoading value)? signInLoading,
    TResult Function(SignInStateSuccess value)? signInSuccess,
    TResult Function(SignUpStateLoading value)? signUpLoading,
    TResult Function(SignUpStateSuccess value)? signUpSuccess,
    TResult Function(SignStateError value)? error,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(this);
    }
    return orElse();
  }
}

abstract class SignUpStateSuccess implements SignState {
  const factory SignUpStateSuccess() = _$SignUpStateSuccess;
}

/// @nodoc
abstract class _$$SignStateErrorCopyWith<$Res> {
  factory _$$SignStateErrorCopyWith(
          _$SignStateError value, $Res Function(_$SignStateError) then) =
      __$$SignStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SignStateErrorCopyWithImpl<$Res>
    extends _$SignStateCopyWithImpl<$Res, _$SignStateError>
    implements _$$SignStateErrorCopyWith<$Res> {
  __$$SignStateErrorCopyWithImpl(
      _$SignStateError _value, $Res Function(_$SignStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SignStateError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignStateError implements SignStateError {
  const _$SignStateError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'SignState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignStateErrorCopyWith<_$SignStateError> get copyWith =>
      __$$SignStateErrorCopyWithImpl<_$SignStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() signInLoading,
    required TResult Function(SignInResponseEntity? signInResponseEntity)
        signInSuccess,
    required TResult Function() signUpLoading,
    required TResult Function() signUpSuccess,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? signInLoading,
    TResult? Function(SignInResponseEntity? signInResponseEntity)?
        signInSuccess,
    TResult? Function()? signUpLoading,
    TResult? Function()? signUpSuccess,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? signInLoading,
    TResult Function(SignInResponseEntity? signInResponseEntity)? signInSuccess,
    TResult Function()? signUpLoading,
    TResult Function()? signUpSuccess,
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
    required TResult Function(SignStateIdle value) idle,
    required TResult Function(SignInStateLoading value) signInLoading,
    required TResult Function(SignInStateSuccess value) signInSuccess,
    required TResult Function(SignUpStateLoading value) signUpLoading,
    required TResult Function(SignUpStateSuccess value) signUpSuccess,
    required TResult Function(SignStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignStateIdle value)? idle,
    TResult? Function(SignInStateLoading value)? signInLoading,
    TResult? Function(SignInStateSuccess value)? signInSuccess,
    TResult? Function(SignUpStateLoading value)? signUpLoading,
    TResult? Function(SignUpStateSuccess value)? signUpSuccess,
    TResult? Function(SignStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignStateIdle value)? idle,
    TResult Function(SignInStateLoading value)? signInLoading,
    TResult Function(SignInStateSuccess value)? signInSuccess,
    TResult Function(SignUpStateLoading value)? signUpLoading,
    TResult Function(SignUpStateSuccess value)? signUpSuccess,
    TResult Function(SignStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignStateError implements SignState {
  const factory SignStateError({final String? message}) = _$SignStateError;

  String? get message;
  @JsonKey(ignore: true)
  _$$SignStateErrorCopyWith<_$SignStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
