import 'package:story_spark/core/service/network/network_state/result.dart';
import 'package:story_spark/features/account/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<Result<UserEntity?>> updateUser(UserEntity userEntity);
  Future<Result<UserEntity?>> getUser();
}
