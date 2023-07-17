import 'package:injectable/injectable.dart';
import 'package:story_spark/common/extension/result_extension.dart';
import 'package:story_spark/core/base/data/local/data_sources/token/token_local_data_source.dart';
import 'package:story_spark/core/service/network/network_state/result.dart';
import 'package:story_spark/features/library/data/data_sources/library_data_source.dart';
import 'package:story_spark/features/library/domain/entities/preview_library_entity.dart';
import 'package:story_spark/features/library/domain/entities/preview_library_mapper.dart';
import 'package:story_spark/features/library/domain/repositories/library_repository.dart';

@LazySingleton(as: LibraryRepository)
class LibraryRepositoryImpl extends LibraryRepository {
  final LibraryDataSource _libraryDataSource;
  final TokenLocalDataSource _tokenLocalDataSource;

  LibraryRepositoryImpl(this._libraryDataSource, this._tokenLocalDataSource);

  @override
  Future<Result<List<PreviewLibraryEntity?>?>> getPreviewLibrary() async {
    try {
      final resultToken = await _tokenLocalDataSource.readToken();
      final result = await _libraryDataSource.getPreviewLibrary(resultToken.data!.accessToken!);
      return Result.success(data: result.data!.map((e) => e.mapper()).toList(), status: result.status?.toString());
    } catch (e, s) {
      return e.toResult(s);
    }
  }
}
