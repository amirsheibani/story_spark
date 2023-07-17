class SignInRequestModel {
  final String? email;
  final String? password;

  SignInRequestModel({this.email, this.password});

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['password'] = password;
    return map;
  }
}
