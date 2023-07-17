import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_spark/features/library/domain/entities/preview_library_entity.dart';

part 'library_state.freezed.dart';

@freezed
class LibraryState with _$LibraryState {
  const factory LibraryState.idle() = LibraryStateIdle;

  const factory LibraryState.loading() = LibraryStateLoading;
  const factory LibraryState.success({List<PreviewLibraryEntity?>? items}) = LibraryStateSuccess;

  const factory LibraryState.error({String? message}) = LibraryStateError;
}
