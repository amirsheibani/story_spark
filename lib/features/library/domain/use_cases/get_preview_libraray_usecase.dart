import 'package:injectable/injectable.dart';
import 'package:story_spark/core/base/domain/usecase/base_usecase.dart';
import 'package:story_spark/core/service/network/network_state/result.dart';
import 'package:story_spark/features/library/domain/entities/preview_library_entity.dart';
import 'package:story_spark/features/library/domain/repositories/library_repository.dart';

@lazySingleton
class GetPreviewLibraryUseCase extends BaseUseCaseNoArgs<Result<List<PreviewLibraryEntity?>?>> {
  final LibraryRepository _repository;

  GetPreviewLibraryUseCase(this._repository);

  @override
  Future<Result<List<PreviewLibraryEntity?>?>> call() async {
    final result = await _repository.getPreviewLibrary();
    return result;
  }
}
