import 'package:story_spark/core/base/data/base/model/base_response.dart';
import 'package:story_spark/features/library/data/models/preview_library_model.dart';

abstract class LibraryDataSource {
  Future<BaseListResponse<PreviewLibraryModel>> getPreviewLibrary(String token);
}
