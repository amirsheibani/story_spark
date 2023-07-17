import 'package:injectable/injectable.dart';
import 'package:story_spark/core/base/domain/repositories/token/token_repository.dart';
import 'package:story_spark/core/base/domain/usecase/base_usecase.dart';
import 'package:story_spark/core/service/network/network_state/result.dart';

@lazySingleton
class ResetTokenUseCase extends BaseUseCaseNoArgs<Result<bool?>> {
  final TokenRepository _repository;

  ResetTokenUseCase(this._repository);

  @override
  Future<Result<bool?>> call() {
    return _repository.resetToken();
  }
}
