class CityEntity {
  CityEntity({
    this.id,
    this.name,
    this.nameEn,
    this.domainCode,
    this.description,
    this.provinceId,
    this.latitude,
    this.longitude,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  final int? id;
  final String? name;
  final String? nameEn;
  final String? domainCode;
  final String? description;
  final int? provinceId;
  final String? latitude;
  final String? longitude;
  final String? deletedAt;
  final String? createdAt;
  final String? updatedAt;
}
