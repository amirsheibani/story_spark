import 'package:injectable/injectable.dart';
import 'package:story_spark/core/base/domain/usecase/base_usecase.dart';
import 'package:story_spark/core/service/network/network_state/result.dart';
import 'package:story_spark/features/auth/domain/entities/sign_in_request_entity.dart';
import 'package:story_spark/features/auth/domain/entities/sign_in_response_entity.dart';
import 'package:story_spark/features/auth/domain/repositories/sign_in_up_repository.dart';

@lazySingleton
class SignInUseCase extends BaseUseCase<Result<SignInResponseEntity?>, SignInRequestEntity> {
  final SignInUpRepository _repository;

  SignInUseCase(this._repository);

  @override
  Future<Result<SignInResponseEntity?>> call(SignInRequestEntity arg) async {
    final result = await _repository.signIn(arg);
    return result;
  }
}
