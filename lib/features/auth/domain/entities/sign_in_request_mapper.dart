import 'package:story_spark/features/auth/data/models/sign_in_request_model.dart';
import 'package:story_spark/features/auth/domain/entities/sign_in_request_entity.dart';

extension SignInRequestEntityMapper on SignInRequestEntity {
  SignInRequestModel mapper() {
    return SignInRequestModel(
      email: email,
      password: password,
    );
  }
}

extension SignInRequestModelMapper on SignInRequestModel {
  SignInRequestEntity mapper() {
    return SignInRequestEntity(
      email: email,
      password: password,
    );
  }
}
