import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:story_spark/core/base/data/base/model/base_response.dart';

part 'sign_in_up_service.g.dart';

@RestApi()
@lazySingleton
abstract class SignInUpService {
  @factoryMethod
  factory SignInUpService(Dio dio) = _SignInUpService;

  @POST('/app-sign-in/')
  @FormUrlEncoded()
  Future<dynamic> signIn({
    @Field("email") String? email,
    @Field("password") String? password,
  });

  @POST('/app-sign-up/')
  @FormUrlEncoded()
  Future<BaseSingleResponseWithOutParser<String>> signUp({
    @Field("email") String? email,
    @Field("password") String? password,
    @Field("confirm_password") String? confirmPassword,
  });
}
