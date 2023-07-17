class UserModel {
  UserModel(
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
      this.plateNumber,
      this.vehicleId,
      this.licenseNumber,
      this.address,
      this.passportNumber});

  factory UserModel.fromJson(dynamic json) {
    return UserModel(
      id: json['id'] != null ? json['id'] as int : null,
      firstName: json['first_name'],
      lastName: json['last_name'],
      phone: json['phone'],
      email: json['email'],
      code: json['code'],
      status: json['status'],
      avatar: json['avatar'],
      shebaNum: json['sheba_num'],
      bankCart: json['bank_cart'],
      identityCode: json['identity_code'],
      lastLogin: json['last_login'],
      phoneVerifiedAt: json['phone_verified_at'],
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? email;
  final String? code;
  final String? status;
  final String? avatar;
  final String? shebaNum;
  final String? bankCart;
  final String? identityCode;
  final String? lastLogin;
  final String? phoneVerifiedAt;
  final String? deletedAt;
  final String? createdAt;
  final String? updatedAt;
  final List<dynamic>? attachments;
  final String? licenseNumber;
  final String? address;
  final String? vehicleId;
  final String? plateNumber;
  final String? passportNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (id != null) map['id'] = id;
    if (firstName != null) map['first_name'] = firstName;
    if (lastName != null) map['last_name'] = lastName;
    if (phone != null) map['phone'] = phone;
    if (email != null) map['email'] = email;
    if (code != null) map['code'] = code;
    if (status != null) map['status'] = status;
    if (avatar != null) map['avatar'] = avatar;
    if (shebaNum != null) map['sheba_num'] = shebaNum;
    if (bankCart != null) map['bank_cart'] = bankCart;
    if (identityCode != null) map['identity_code'] = identityCode;
    if (lastLogin != null) map['last_login'] = lastLogin;
    if (phoneVerifiedAt != null) map['phone_verified_at'] = phoneVerifiedAt;
    if (deletedAt != null) map['deleted_at'] = deletedAt;
    if (createdAt != null) map['created_at'] = createdAt;
    if (updatedAt != null) map['updated_at'] = updatedAt;

    if (licenseNumber != null) map['licence_id'] = licenseNumber;
    if (vehicleId != null) map['vehicle_id'] = updatedAt;
    if (passportNumber != null) map['passport_id'] = updatedAt;
    if (plateNumber != null) map['plate_number'] = updatedAt;
    if (address != null) map['address'] = updatedAt;

    return map;
  }
}
