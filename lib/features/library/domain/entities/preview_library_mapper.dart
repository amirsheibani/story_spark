import 'package:story_spark/features/library/data/models/preview_library_model.dart';
import 'package:story_spark/features/library/domain/entities/preview_library_entity.dart';

extension PreviewLibraryEntityMapper on PreviewLibraryEntity {
  PreviewLibraryModel mapper() {
    return PreviewLibraryModel(
      title: title,
      thumbnail: thumbnail,
      link: link,
    );
  }
}

extension PreviewLibraryModelMapper on PreviewLibraryModel {
  PreviewLibraryEntity mapper() {
    return PreviewLibraryEntity(
      title: title,
      thumbnail: thumbnail,
      link: link,
    );
  }
}
