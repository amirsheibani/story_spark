import 'package:story_spark/features/account/data/models/user_model.dart';
import 'package:story_spark/features/account/domain/entities/user_entity.dart';

extension UserEntityMapper on UserEntity {
  UserModel mapper() {
    return UserModel(
        id: id,
        firstName: firstName,
        lastName: lastName,
        phone: phone,
        email: email,
        code: code,
        status: status,
        avatar: avatar,
        shebaNum: shebaNum,
        bankCart: bankCart,
        identityCode: identityCode,
        lastLogin: lastLogin,
        phoneVerifiedAt: phoneVerifiedAt,
        deletedAt: deletedAt,
        createdAt: createdAt,
        updatedAt: updatedAt,
        attachments: attachments,
        licenseNumber: licenseNumber,
        plateNumber: plateNumber,
        address: address,
        vehicleId: vehicleId,
        passportNumber: passportNumber);
  }
}

extension UserModelMapper on UserModel {
  UserEntity mapper() {
    return UserEntity(
      id: id,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      email: email,
      code: code,
      status: status,
      avatar: avatar,
      shebaNum: shebaNum,
      bankCart: bankCart,
      identityCode: identityCode,
      lastLogin: lastLogin,
      phoneVerifiedAt: phoneVerifiedAt,
      deletedAt: deletedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      attachments: attachments,
      licenseNumber: licenseNumber,
      plateNumber: plateNumber,
      address: address,
      vehicleId: vehicleId,
      passportNumber: passportNumber,
    );
  }
}
