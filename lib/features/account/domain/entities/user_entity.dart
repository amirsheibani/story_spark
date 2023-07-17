class UserEntity {
  UserEntity(
      {this.id,
      this.firstName,
      this.lastName,
      this.phone,
      this.email,
      this.code,
      this.status,
      this.avatar,
      this.shebaNum,
      this.bankCart,
      this.identityCode,
      this.lastLogin,
      this.phoneVerifiedAt,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.attachments,
      this.gender,
      this.address,
      this.licenseNumber,
      this.vehicleId,
      this.plateNumber,
      this.passportNumber});

  int? id;
  String? firstName;
  String? lastName;
  String? phone;
  String? email;
  String? code;
  String? status;
  String? avatar;
  String? shebaNum;
  String? bankCart;
  String? identityCode;
  String? lastLogin;
  String? phoneVerifiedAt;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  String? gender;
  List<dynamic>? attachments;
  String? licenseNumber;
  String? address;
  String? vehicleId;
  String? plateNumber;
  String? passportNumber;
}
