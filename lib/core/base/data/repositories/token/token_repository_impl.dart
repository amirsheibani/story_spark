import 'package:injectable/injectable.dart';
import 'package:story_spark/common/extension/result_extension.dart';
import 'package:story_spark/core/base/data/local/data_sources/token/token_local_data_source.dart';
import 'package:story_spark/core/base/domain/repositories/token/token_repository.dart';
import 'package:story_spark/core/service/network/network_state/result.dart';

@LazySingleton(as: TokenRepository)
class TokenRepositoryImpl extends TokenRepository {
  final TokenLocalDataSource _localDataSource;

  TokenRepositoryImpl(this._localDataSource);

  @override
  Future<Result<bool>> hasToken() async {
    try {
      final result = await _localDataSource.readToken();
      final bool status = (result.data != null) && (result.data!.accessToken != null);
      return Result.success(data: status, status: result.status, message: result.message);
    } catch (e, s) {
      return e.toResult(s);
    }
  }

  @override
  Future<Result<bool>> resetToken() async {
    try {
      final result = await _localDataSource.removeToken();
      return Result.success(data: result.data ?? false, status: result.status, message: result.message);
    } catch (e, s) {
      return e.toResult(s);
    }
  }
}
