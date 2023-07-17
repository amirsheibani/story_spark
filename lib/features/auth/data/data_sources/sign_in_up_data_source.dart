import 'package:story_spark/core/base/data/base/model/base_response.dart';
import 'package:story_spark/features/auth/data/models/sign_in_request_model.dart';
import 'package:story_spark/features/auth/data/models/sign_in_response_model.dart';
import 'package:story_spark/features/auth/data/models/sign_up_request_model.dart';

abstract class SignInUPDataSource {
  Future<BaseSingleResponse<SignInResponseModel>> signIn(SignInRequestModel signInRequestModel);
  Future<BaseSingleResponse> signUp(SignUpRequestModel signUpRequestModel);
}
