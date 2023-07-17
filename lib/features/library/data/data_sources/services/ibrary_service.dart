import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'ibrary_service.g.dart';

@RestApi()
@lazySingleton
abstract class LibraryService {
  @factoryMethod
  factory LibraryService(Dio dio) = _LibraryService;

  @GET('/app-library/')
  @FormUrlEncoded()
  Future<dynamic> getPreviewLibrary({
    @Field("token") String? token,
  });
}
