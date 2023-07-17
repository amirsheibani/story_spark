import 'package:story_spark/core/service/network/network_state/result.dart';
import 'package:story_spark/features/auth/domain/entities/sign_in_request_entity.dart';
import 'package:story_spark/features/auth/domain/entities/sign_in_response_entity.dart';
import 'package:story_spark/features/auth/domain/entities/sign_up_request_entity.dart';

abstract class SignInUpRepository {
  Future<Result<SignInResponseEntity?>> signIn(SignInRequestEntity signInRequestEntity);
  Future<Result> signUp(SignUpRequestEntity signUpRequestEntity);
}
