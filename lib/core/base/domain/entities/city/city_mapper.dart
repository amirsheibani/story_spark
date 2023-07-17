import 'package:story_spark/core/base/data/local/models/city/city_model.dart';
import 'package:story_spark/core/base/domain/entities/city/city_entity.dart';

extension CityEntityMapper on CityEntity {
  CityModel mapper() {
    return CityModel(
      id: id,
      name: name,
      nameEn: nameEn,
      domainCode: domainCode,
      description: description,
      provinceId: provinceId,
      latitude: latitude,
      longitude: longitude,
      deletedAt: deletedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

extension CityModelMapper on CityModel {
  CityEntity mapper() {
    return CityEntity(
      id: id,
      name: name,
      nameEn: nameEn,
      domainCode: domainCode,
      description: description,
      provinceId: provinceId,
      latitude: latitude,
      longitude: longitude,
      deletedAt: deletedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
