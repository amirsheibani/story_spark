import 'package:story_spark/common/extension/network_exceptions.dart';
import 'package:story_spark/core/base/data/base/model/base_response.dart';
import 'package:story_spark/core/service/network/network_state/result.dart';

extension ErrorApiResultExtension on Object {
  Result<T> toResult<T>(StackTrace? stackTrace) {
    if (this is CustomException) {
      return Result.failure(message: (this as CustomException).cause);
    }
    final error = NetworkExceptions.getDioException(this, stackTrace);
    final str = NetworkExceptions.getErrorMessage(error);
    return Result.failure(message: str);
  }
}

extension SuccessApiResultExtension on BaseSingleResponse {
  Result<T> toResult<T>() {
    var apiResult = Result<T>.success(data: data, message: message, status: status);
    return apiResult;
  }
}

class CustomException implements Exception {
  String cause;
  CustomException(this.cause);
}
