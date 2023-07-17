import 'package:story_spark/core/service/network/network_state/result.dart';
import 'package:story_spark/features/library/domain/entities/preview_library_entity.dart';

abstract class LibraryRepository {
  Future<Result<List<PreviewLibraryEntity?>?>> getPreviewLibrary();
}
