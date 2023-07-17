import 'dart:io';

import 'package:dio/dio.dart';
import 'package:story_spark/core/base/data/local/data_sources/token/token_local_data_source.dart';
import 'package:story_spark/core/base/data/local/models/token/token_model.dart';
import 'package:story_spark/core/di/base/di_setup.dart';

class DioTokenInterceptor extends Interceptor {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    TokenLocalDataSource tokenLocalDataSource = getIt<TokenLocalDataSource>();
    final result = await tokenLocalDataSource.readToken();
    TokenModel? tokenModel = result.data;

    options.headers['device'] = 'app';

    if (tokenModel?.accessToken != null) {
      options.headers[HttpHeaders.authorizationHeader] = 'Bearer ${tokenModel?.accessToken}';
    }
    handler.next(options);
  }

  // @override
  // Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
  //   if (err.response?.statusCode == 401) {
  //     Response? cloneReq;
  //     final Dio dio = Dio();
  //     TokenLocalDataSource tokenLocalDataSource = getIt<TokenLocalDataSource>();
  //     final result = await tokenLocalDataSource.readToken();
  //     TokenModel? tokenModel = result.data;
  //     if (tokenModel?.refreshToken != null) {
  //       try {
  //         final response = await dio.post("${environment.url!}auth/token/refresh", data: jsonEncode({"refresh_token": tokenModel!.refreshToken!}));
  //         if (response.statusCode == 201 || response.statusCode == 200) {
  //           TokenModel tokenModel = TokenModel.fromJson(response.data);
  //           await tokenLocalDataSource.saveToken(TokenModel(accessToken: tokenModel.accessToken, refreshToken: tokenModel.refreshToken));
  //
  //           if (tokenModel.accessToken != null) {
  //             final headers = err.requestOptions.headers;
  //             headers.removeWhere((key, value) => key == 'Authorization');
  //             headers.addAll({"Authorization": "Bearer ${tokenModel.accessToken!}"});
  //
  //             err.requestOptions.headers["Authorization"] = "Bearer ${tokenModel.accessToken!}";
  //             final opts = Options(method: err.requestOptions.method, headers: headers);
  //             cloneReq = await Dio().request(err.requestOptions.path, options: opts, data: err.requestOptions.data, queryParameters: err.requestOptions.queryParameters);
  //           }
  //         }
  //       } catch (e, st) {
  //         debugPrint('Refresh token Exception: ${e.toString()} , StackTrace: ${st.toString()}');
  //       }
  //     }
  //     return cloneReq != null ? handler.resolve(cloneReq) : handler.next(err);
  //   }
  //   return handler.next(err);
  // }
}
