import 'package:story_spark/core/base/data/base/model/base_response.dart';
import 'package:story_spark/features/account/data/models/user_model.dart';

abstract class UserDataSource {
  Future<BaseSingleResponse<UserModel?>> updateUser(UserModel userModel);
  Future<BaseSingleResponse<UserModel?>> getUser();
}
