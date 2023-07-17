import 'package:story_spark/core/base/data/local/models/pagination/pagination_res_model.dart';
import 'package:story_spark/core/base/domain/entities/pagination/pagination_res_entity.dart';

extension MapperOnPaginationResModel on PaginationResModel {
  PaginationResEntity? mapper() {
    return PaginationResEntity(
      currentPage: currentPage,
      lastPage: lastPage,
      perPage: perPage,
      total: total,
    );
  }
}

extension MapperOnPaginationResEntity on PaginationResEntity {
  PaginationResModel? mapper() {
    return PaginationResModel(
      currentPage: currentPage,
      lastPage: lastPage,
      perPage: perPage,
      total: total,
    );
  }
}
