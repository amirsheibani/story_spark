import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:story_spark/common/constants/const_hive.dart';
import 'package:story_spark/core/base/data/base/model/base_response.dart';
import 'package:story_spark/core/base/data/local/data_sources/token/token_local_data_source.dart';
import 'package:story_spark/core/base/data/local/models/token/token_model.dart';
import 'package:story_spark/core/di/base/di_setup.dart';
import 'package:story_spark/core/service/storage/hive/token.dart';

@LazySingleton(as: TokenLocalDataSource)
class TokenLocalDataSourceImpl extends TokenLocalDataSource {
  @override
  Future<BaseSingleResponse> saveToken(TokenModel? value) async {
    try {
      Box box = getIt<Box>();
      final Token token = await box.get(ConstHive.hiveTokenDocument, defaultValue: Token());
      token.tokenType = value?.tokenType;
      token.accessToken = value?.accessToken;
      token.expiresIn = value?.expiresIn;
      token.refreshToken = value?.refreshToken;

      await box.put(ConstHive.hiveTokenDocument, token);
      return BaseSingleResponse(status: 'true', message: '', data: true);
    } catch (e) {
      return BaseSingleResponse(status: 'false', message: e.toString(), data: false);
    }
  }

  @override
  Future<BaseSingleResponse<TokenModel>> readToken() async {
    try {
      Box box = getIt<Box>();
      final Token token = await box.get(ConstHive.hiveTokenDocument, defaultValue: Token());
      return BaseSingleResponse(status: 'true', message: '', data: TokenModel(tokenType: token.tokenType, accessToken: token.accessToken, expiresIn: token.expiresIn, refreshToken: token.refreshToken));
    } catch (e) {
      return BaseSingleResponse(status: 'false', message: e.toString(), data: null);
    }
  }

  @override
  Future<BaseSingleResponse<bool>> removeToken() async {
    try {
      Box box = getIt<Box>();
      await box.delete(ConstHive.hiveTokenDocument);
      return BaseSingleResponse(status: 'true', message: '', data: true);
    } catch (e) {
      return BaseSingleResponse(status: 'false', message: e.toString(), data: false);
    }
  }
}
