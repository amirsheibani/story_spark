import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:story_spark/features/library/presentation/manager/library_filter_manager/library_filter_state.dart';

@injectable
class LibraryFilterCubit extends Cubit<LibraryFilterState> {
  LibraryFilterCubit() : super(const LibraryFilterState.idle());
  bool toggle = false;
  tapToggle() async {
    toggle = !toggle;
    emit(const LibraryFilterState.idle());
    if (toggle) {
      emit(const LibraryFilterState.open());
    } else {
      emit(const LibraryFilterState.close());
    }
  }
}
