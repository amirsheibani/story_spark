import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:story_spark/features/library/domain/use_cases/get_preview_libraray_usecase.dart';
import 'package:story_spark/features/library/presentation/manager/library_manager/library_state.dart';

@injectable
class LibraryCubit extends Cubit<LibraryState> {
  final GetPreviewLibraryUseCase _getPreviewLibraryUseCase;

  LibraryCubit(this._getPreviewLibraryUseCase) : super(const LibraryState.idle());

  getPreviewLibrary() async {
    emit(const LibraryState.loading());
    final result = await _getPreviewLibraryUseCase.call();
    result.whenOrNull(success: (data, message, status) {
      emit(LibraryState.success(items: data));
    }, failure: (message) {
      emit(LibraryState.error(message: message ?? ''));
    });
  }
}
