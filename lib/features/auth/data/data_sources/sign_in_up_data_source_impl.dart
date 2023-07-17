import 'package:injectable/injectable.dart';
import 'package:story_spark/common/extension/result_extension.dart';
import 'package:story_spark/core/base/data/base/model/base_response.dart';
import 'package:story_spark/features/auth/data/data_sources/services/sign_in_up_service.dart';
import 'package:story_spark/features/auth/data/data_sources/sign_in_up_data_source.dart';
import 'package:story_spark/features/auth/data/models/sign_in_request_model.dart';
import 'package:story_spark/features/auth/data/models/sign_in_response_model.dart';
import 'package:story_spark/features/auth/data/models/sign_up_request_model.dart';

@LazySingleton(as: SignInUPDataSource)
class SignInUPDataSourceImpl extends SignInUPDataSource {
  final SignInUpService _service;

  SignInUPDataSourceImpl(this._service);

  @override
  Future<BaseSingleResponse<SignInResponseModel>> signIn(SignInRequestModel signInRequestModel) async {
    final result = await _service.signIn(email: signInRequestModel.email, password: signInRequestModel.password);
    try {
      if (result['data'] != null && result['data'] is Map) {
        return BaseSingleResponse<SignInResponseModel>(data: SignInResponseModel.fromJson(result['data']), status: result['status'], message: result['message']);
      } else {
        throw CustomException(result['data'] ?? '');
      }
    } catch (e) {
      throw CustomException(result['data'] ?? '');
    }
  }

  @override
  Future<BaseSingleResponse> signUp(SignUpRequestModel signUpRequestModel) async {
    final result = await _service.signUp(email: signUpRequestModel.email, password: signUpRequestModel.password, confirmPassword: signUpRequestModel.confirmPassword);
    return BaseSingleResponse(data: result.data, status: result.status, message: result.message);
  }
}
