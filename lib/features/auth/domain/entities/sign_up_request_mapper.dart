import 'package:story_spark/features/auth/data/models/sign_up_request_model.dart';
import 'package:story_spark/features/auth/domain/entities/sign_up_request_entity.dart';

extension SignUpRequestEntityMapper on SignUpRequestEntity {
  SignUpRequestModel mapper() {
    return SignUpRequestModel(email: email, password: password, confirmPassword: confirmPassword, username: username);
  }
}

extension SignUpRequestModelMapper on SignUpRequestModel {
  SignUpRequestEntity mapper() {
    return SignUpRequestEntity(email: email, password: password, confirmPassword: confirmPassword, username: username);
  }
}
