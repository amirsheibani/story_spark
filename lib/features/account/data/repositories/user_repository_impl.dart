import 'package:injectable/injectable.dart';
import 'package:story_spark/common/extension/result_extension.dart';
import 'package:story_spark/core/service/network/network_state/result.dart';
import 'package:story_spark/features/account/data/data_sources/user_data_source.dart';
import 'package:story_spark/features/account/domain/entities/user_entity.dart';
import 'package:story_spark/features/account/domain/entities/user_mapper.dart';
import 'package:story_spark/features/account/domain/repositories/user_repository.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  final UserDataSource _userDataSource;

  UserRepositoryImpl(
    this._userDataSource,
  );

  @override
  Future<Result<UserEntity?>> updateUser(UserEntity userEntity) async {
    try {
      final result = await _userDataSource.updateUser(userEntity.mapper());
      return Result.success(data: result.data?.mapper(), message: result.message, status: result.status);
    } catch (e, s) {
      return e.toResult(s);
    }
  }

  @override
  Future<Result<UserEntity?>> getUser() async {
    try {
      final result = await _userDataSource.getUser();
      return Result.success(data: result.data?.mapper(), message: result.message, status: result.status);
    } catch (e, s) {
      return e.toResult(s);
    }
  }
}
