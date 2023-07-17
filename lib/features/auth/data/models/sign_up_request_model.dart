class SignUpRequestModel {
  final String? username;
  final String? email;
  final String? password;
  final String? confirmPassword;

  SignUpRequestModel({this.username, this.email, this.password, this.confirmPassword});

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['username'] = username;
    map['password'] = password;
    map['confirm_password'] = confirmPassword;
    return map;
  }
}
