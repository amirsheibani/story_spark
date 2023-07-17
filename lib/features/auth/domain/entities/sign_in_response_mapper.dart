import 'package:story_spark/features/auth/data/models/sign_in_response_model.dart';
import 'package:story_spark/features/auth/domain/entities/sign_in_response_entity.dart';

extension SignInResponseEntityMapper on SignInResponseEntity {
  SignInResponseModel mapper() {
    return SignInResponseModel(
      name: name,
      email: email,
    );
  }
}

extension SignInResponseModelMapper on SignInResponseModel {
  SignInResponseEntity mapper() {
    return SignInResponseEntity(
      name: name,
      email: email,
    );
  }
}
