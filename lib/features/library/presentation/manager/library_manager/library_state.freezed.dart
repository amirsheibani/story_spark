// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LibraryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<PreviewLibraryEntity?>? items) success,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<PreviewLibraryEntity?>? items)? success,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<PreviewLibraryEntity?>? items)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LibraryStateIdle value) idle,
    required TResult Function(LibraryStateLoading value) loading,
    required TResult Function(LibraryStateSuccess value) success,
    required TResult Function(LibraryStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LibraryStateIdle value)? idle,
    TResult? Function(LibraryStateLoading value)? loading,
    TResult? Function(LibraryStateSuccess value)? success,
    TResult? Function(LibraryStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LibraryStateIdle value)? idle,
    TResult Function(LibraryStateLoading value)? loading,
    TResult Function(LibraryStateSuccess value)? success,
    TResult Function(LibraryStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryStateCopyWith<$Res> {
  factory $LibraryStateCopyWith(
          LibraryState value, $Res Function(LibraryState) then) =
      _$LibraryStateCopyWithImpl<$Res, LibraryState>;
}

/// @nodoc
class _$LibraryStateCopyWithImpl<$Res, $Val extends LibraryState>
    implements $LibraryStateCopyWith<$Res> {
  _$LibraryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LibraryStateIdleCopyWith<$Res> {
  factory _$$LibraryStateIdleCopyWith(
          _$LibraryStateIdle value, $Res Function(_$LibraryStateIdle) then) =
      __$$LibraryStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LibraryStateIdleCopyWithImpl<$Res>
    extends _$LibraryStateCopyWithImpl<$Res, _$LibraryStateIdle>
    implements _$$LibraryStateIdleCopyWith<$Res> {
  __$$LibraryStateIdleCopyWithImpl(
      _$LibraryStateIdle _value, $Res Function(_$LibraryStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LibraryStateIdle implements LibraryStateIdle {
  const _$LibraryStateIdle();

  @override
  String toString() {
    return 'LibraryState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LibraryStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<PreviewLibraryEntity?>? items) success,
    required TResult Function(String? message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<PreviewLibraryEntity?>? items)? success,
    TResult? Function(String? message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<PreviewLibraryEntity?>? items)? success,
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
    required TResult Function(LibraryStateIdle value) idle,
    required TResult Function(LibraryStateLoading value) loading,
    required TResult Function(LibraryStateSuccess value) success,
    required TResult Function(LibraryStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LibraryStateIdle value)? idle,
    TResult? Function(LibraryStateLoading value)? loading,
    TResult? Function(LibraryStateSuccess value)? success,
    TResult? Function(LibraryStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LibraryStateIdle value)? idle,
    TResult Function(LibraryStateLoading value)? loading,
    TResult Function(LibraryStateSuccess value)? success,
    TResult Function(LibraryStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class LibraryStateIdle implements LibraryState {
  const factory LibraryStateIdle() = _$LibraryStateIdle;
}

/// @nodoc
abstract class _$$LibraryStateLoadingCopyWith<$Res> {
  factory _$$LibraryStateLoadingCopyWith(_$LibraryStateLoading value,
          $Res Function(_$LibraryStateLoading) then) =
      __$$LibraryStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LibraryStateLoadingCopyWithImpl<$Res>
    extends _$LibraryStateCopyWithImpl<$Res, _$LibraryStateLoading>
    implements _$$LibraryStateLoadingCopyWith<$Res> {
  __$$LibraryStateLoadingCopyWithImpl(
      _$LibraryStateLoading _value, $Res Function(_$LibraryStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LibraryStateLoading implements LibraryStateLoading {
  const _$LibraryStateLoading();

  @override
  String toString() {
    return 'LibraryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LibraryStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<PreviewLibraryEntity?>? items) success,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<PreviewLibraryEntity?>? items)? success,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<PreviewLibraryEntity?>? items)? success,
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
    required TResult Function(LibraryStateIdle value) idle,
    required TResult Function(LibraryStateLoading value) loading,
    required TResult Function(LibraryStateSuccess value) success,
    required TResult Function(LibraryStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LibraryStateIdle value)? idle,
    TResult? Function(LibraryStateLoading value)? loading,
    TResult? Function(LibraryStateSuccess value)? success,
    TResult? Function(LibraryStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LibraryStateIdle value)? idle,
    TResult Function(LibraryStateLoading value)? loading,
    TResult Function(LibraryStateSuccess value)? success,
    TResult Function(LibraryStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LibraryStateLoading implements LibraryState {
  const factory LibraryStateLoading() = _$LibraryStateLoading;
}

/// @nodoc
abstract class _$$LibraryStateSuccessCopyWith<$Res> {
  factory _$$LibraryStateSuccessCopyWith(_$LibraryStateSuccess value,
          $Res Function(_$LibraryStateSuccess) then) =
      __$$LibraryStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PreviewLibraryEntity?>? items});
}

/// @nodoc
class __$$LibraryStateSuccessCopyWithImpl<$Res>
    extends _$LibraryStateCopyWithImpl<$Res, _$LibraryStateSuccess>
    implements _$$LibraryStateSuccessCopyWith<$Res> {
  __$$LibraryStateSuccessCopyWithImpl(
      _$LibraryStateSuccess _value, $Res Function(_$LibraryStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$LibraryStateSuccess(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PreviewLibraryEntity?>?,
    ));
  }
}

/// @nodoc

class _$LibraryStateSuccess implements LibraryStateSuccess {
  const _$LibraryStateSuccess({final List<PreviewLibraryEntity?>? items})
      : _items = items;

  final List<PreviewLibraryEntity?>? _items;
  @override
  List<PreviewLibraryEntity?>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LibraryState.success(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryStateSuccess &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryStateSuccessCopyWith<_$LibraryStateSuccess> get copyWith =>
      __$$LibraryStateSuccessCopyWithImpl<_$LibraryStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<PreviewLibraryEntity?>? items) success,
    required TResult Function(String? message) error,
  }) {
    return success(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<PreviewLibraryEntity?>? items)? success,
    TResult? Function(String? message)? error,
  }) {
    return success?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<PreviewLibraryEntity?>? items)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LibraryStateIdle value) idle,
    required TResult Function(LibraryStateLoading value) loading,
    required TResult Function(LibraryStateSuccess value) success,
    required TResult Function(LibraryStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LibraryStateIdle value)? idle,
    TResult? Function(LibraryStateLoading value)? loading,
    TResult? Function(LibraryStateSuccess value)? success,
    TResult? Function(LibraryStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LibraryStateIdle value)? idle,
    TResult Function(LibraryStateLoading value)? loading,
    TResult Function(LibraryStateSuccess value)? success,
    TResult Function(LibraryStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LibraryStateSuccess implements LibraryState {
  const factory LibraryStateSuccess(
      {final List<PreviewLibraryEntity?>? items}) = _$LibraryStateSuccess;

  List<PreviewLibraryEntity?>? get items;
  @JsonKey(ignore: true)
  _$$LibraryStateSuccessCopyWith<_$LibraryStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LibraryStateErrorCopyWith<$Res> {
  factory _$$LibraryStateErrorCopyWith(
          _$LibraryStateError value, $Res Function(_$LibraryStateError) then) =
      __$$LibraryStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$LibraryStateErrorCopyWithImpl<$Res>
    extends _$LibraryStateCopyWithImpl<$Res, _$LibraryStateError>
    implements _$$LibraryStateErrorCopyWith<$Res> {
  __$$LibraryStateErrorCopyWithImpl(
      _$LibraryStateError _value, $Res Function(_$LibraryStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$LibraryStateError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LibraryStateError implements LibraryStateError {
  const _$LibraryStateError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'LibraryState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryStateErrorCopyWith<_$LibraryStateError> get copyWith =>
      __$$LibraryStateErrorCopyWithImpl<_$LibraryStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<PreviewLibraryEntity?>? items) success,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<PreviewLibraryEntity?>? items)? success,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<PreviewLibraryEntity?>? items)? success,
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
    required TResult Function(LibraryStateIdle value) idle,
    required TResult Function(LibraryStateLoading value) loading,
    required TResult Function(LibraryStateSuccess value) success,
    required TResult Function(LibraryStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LibraryStateIdle value)? idle,
    TResult? Function(LibraryStateLoading value)? loading,
    TResult? Function(LibraryStateSuccess value)? success,
    TResult? Function(LibraryStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LibraryStateIdle value)? idle,
    TResult Function(LibraryStateLoading value)? loading,
    TResult Function(LibraryStateSuccess value)? success,
    TResult Function(LibraryStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LibraryStateError implements LibraryState {
  const factory LibraryStateError({final String? message}) =
      _$LibraryStateError;

  String? get message;
  @JsonKey(ignore: true)
  _$$LibraryStateErrorCopyWith<_$LibraryStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
