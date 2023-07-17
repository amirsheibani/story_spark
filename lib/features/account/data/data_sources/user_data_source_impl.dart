import 'package:injectable/injectable.dart';
import 'package:story_spark/core/base/data/base/model/base_response.dart';
import 'package:story_spark/features/account/data/data_sources/services/user_service.dart';
import 'package:story_spark/features/account/data/data_sources/user_data_source.dart';
import 'package:story_spark/features/account/data/models/user_model.dart';

@LazySingleton(as: UserDataSource)
class UserDataSourceImpl extends UserDataSource {
  final UserService _service;

  UserDataSourceImpl(this._service);

  @override
  Future<BaseSingleResponse<UserModel?>> updateUser(UserModel userModel) async {
    final result = await _service.updateUser(
      userModel.firstName ?? '',
      userModel.lastName ?? '',
      userModel.identityCode ?? '',
      userModel.licenseNumber ?? '',
      userModel.vehicleId ?? '',
      userModel.plateNumber ?? '',
      userModel.address ?? '',
    );
    return result;
  }

  @override
  Future<BaseSingleResponse<UserModel?>> getUser() async {
    final result = await _service.getUser();
    return result;
  }
}
