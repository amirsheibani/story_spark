import 'package:injectable/injectable.dart';
import 'package:story_spark/common/extension/result_extension.dart';
import 'package:story_spark/core/base/data/base/model/base_response.dart';
import 'package:story_spark/features/library/data/data_sources/library_data_source.dart';
import 'package:story_spark/features/library/data/data_sources/services/ibrary_service.dart';
import 'package:story_spark/features/library/data/models/preview_library_model.dart';

@LazySingleton(as: LibraryDataSource)
class LibraryDataSourceImpl extends LibraryDataSource {
  final LibraryService _service;

  LibraryDataSourceImpl(this._service);

  @override
  Future<BaseListResponse<PreviewLibraryModel>> getPreviewLibrary(String token) async {
    try {
      final result = await _service.getPreviewLibrary(token: token);
      if (result != null && result is List) {
        return BaseListResponse<PreviewLibraryModel>(data: (result).map((e) => PreviewLibraryModel.fromJson(e)).toList(), status: true, message: '');
      } else {
        throw CustomException('Can not get data from server!');
      }
    } catch (e) {
      throw CustomException('Can not get data from server!');
    }
  }
}
