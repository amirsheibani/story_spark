import 'package:injectable/injectable.dart';
import 'package:story_spark/core/base/domain/usecase/base_usecase.dart';
import 'package:story_spark/core/service/network/network_state/result.dart';
import 'package:story_spark/features/auth/domain/entities/sign_up_request_entity.dart';
import 'package:story_spark/features/auth/domain/repositories/sign_in_up_repository.dart';

@lazySingleton
class SignUpUseCase extends BaseUseCase<Result, SignUpRequestEntity> {
  final SignInUpRepository _repository;

  SignUpUseCase(this._repository);

  @override
  Future<Result> call(SignUpRequestEntity arg) async {
    final result = await _repository.signUp(arg);
    return result;
  }
}
