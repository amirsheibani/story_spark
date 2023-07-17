import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:story_spark/core/base/data/base/model/base_response.dart';
import 'package:story_spark/features/account/data/models/user_model.dart';

part 'user_service.g.dart';

@RestApi()
@lazySingleton
abstract class UserService {
  @factoryMethod
  factory UserService(Dio dio) = _UserService;

  @POST('/v1/driver/store')
  Future<BaseSingleResponse<UserModel>> updateUser(
    @Query('first_name') String firstname,
    @Query('last_name') String lastname,
    @Query('passport_id') String passportId,
    @Query('licence_id') String licenceId,
    @Query('vehicle_id') String vehicleId,
    @Query('plate_number') String plateNumber,
    @Query('address') String address,
  );

  @GET('/v1/users/user-info')
  Future<BaseSingleResponse<UserModel>> getUser();
}
