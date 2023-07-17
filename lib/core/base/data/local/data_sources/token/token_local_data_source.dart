import 'package:story_spark/core/base/data/base/model/base_response.dart';
import 'package:story_spark/core/base/data/local/models/token/token_model.dart';

abstract class TokenLocalDataSource {
  Future<BaseSingleResponse> saveToken(TokenModel? value);

  Future<BaseSingleResponse<TokenModel>> readToken();

  Future<BaseSingleResponse<bool>> removeToken();
}
