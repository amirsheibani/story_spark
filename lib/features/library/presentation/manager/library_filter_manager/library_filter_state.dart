import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_filter_state.freezed.dart';

@freezed
class LibraryFilterState with _$LibraryFilterState {
  const factory LibraryFilterState.idle() = LibraryFilterStateIdle;

  const factory LibraryFilterState.open() = LibraryFilterStateOpen;
  const factory LibraryFilterState.close() = LibraryFilterStateClose;
}
