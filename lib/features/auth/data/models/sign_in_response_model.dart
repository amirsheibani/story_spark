class SignInResponseModel {
  SignInResponseModel({
    this.name,
    this.email,
    this.token,
  });

  factory SignInResponseModel.fromJson(dynamic json) {
    return SignInResponseModel(
      name: json['name'],
      email: json['email'],
      token: json['token'],
    );
  }
  final String? name;
  final String? email;
  final String? token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['token'] = token;
    return map;
  }
}
