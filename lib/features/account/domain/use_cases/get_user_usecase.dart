import 'package:injectable/injectable.dart';
import 'package:story_spark/core/base/domain/usecase/base_usecase.dart';
import 'package:story_spark/core/service/network/network_state/result.dart';
import 'package:story_spark/features/account/domain/entities/user_entity.dart';
import 'package:story_spark/features/account/domain/repositories/user_repository.dart';

@lazySingleton
class GetUserUseCase extends BaseUseCaseNoArgs<Result<UserEntity?>> {
  final UserRepository _repository;

  GetUserUseCase(this._repository);

  @override
  Future<Result<UserEntity?>> call() async {
    final result = await _repository.getUser();
    return result;
  }
}
