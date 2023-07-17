import 'package:injectable/injectable.dart';
import 'package:story_spark/common/extension/result_extension.dart';
import 'package:story_spark/core/base/data/local/data_sources/token/token_local_data_source.dart';
import 'package:story_spark/core/base/data/local/models/token/token_model.dart';
import 'package:story_spark/core/service/network/network_state/result.dart';
import 'package:story_spark/features/auth/data/data_sources/sign_in_up_data_source.dart';
import 'package:story_spark/features/auth/domain/entities/sign_in_request_entity.dart';
import 'package:story_spark/features/auth/domain/entities/sign_in_request_mapper.dart';
import 'package:story_spark/features/auth/domain/entities/sign_in_response_entity.dart';
import 'package:story_spark/features/auth/domain/entities/sign_in_response_mapper.dart';
import 'package:story_spark/features/auth/domain/entities/sign_up_request_entity.dart';
import 'package:story_spark/features/auth/domain/entities/sign_up_request_mapper.dart';
import 'package:story_spark/features/auth/domain/repositories/sign_in_up_repository.dart';

@LazySingleton(as: SignInUpRepository)
class SignInUpRepositoryImpl extends SignInUpRepository {
  final SignInUPDataSource _signInUPDataSource;
  final TokenLocalDataSource _tokenLocalDataSource;

  SignInUpRepositoryImpl(this._signInUPDataSource, this._tokenLocalDataSource);

  @override
  Future<Result<SignInResponseEntity?>> signIn(SignInRequestEntity signInRequestEntity) async {
    try {
      final result = await _signInUPDataSource.signIn(signInRequestEntity.mapper());
      await _tokenLocalDataSource.saveToken(TokenModel(accessToken: result.data?.token));
      return Result.success(data: result.data?.mapper(), status: result.status?.toString());
    } catch (e, s) {
      return e.toResult(s);
    }
  }

  @override
  Future<Result> signUp(SignUpRequestEntity signUpRequestEntity) async {
    try {
      final result = await _signInUPDataSource.signUp(signUpRequestEntity.mapper());
      return Result.success(data: result.data, status: result.status?.toString());
    } catch (e, s) {
      return e.toResult(s);
    }
  }
}
