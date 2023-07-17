class PreviewLibraryModel {
  PreviewLibraryModel({
    this.title,
    this.thumbnail,
    this.link,
  });

  factory PreviewLibraryModel.fromJson(dynamic json) {
    return PreviewLibraryModel(
      title: json['titel'],
      thumbnail: json['thumbnail'],
      link: json['link'],
    );
  }
  final String? title;
  final String? thumbnail;
  final String? link;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['titel'] = title;
    map['thumbnail'] = thumbnail;
    map['link'] = link;
    return map;
  }
}
