import 'package:dio/dio.dart';
import 'package:eclipse_tz/data/models_album/model_album.dart';
import 'package:eclipse_tz/data/models_user/model_user.dart';
import 'package:retrofit/retrofit.dart';

part 'service.g.dart';

class ApisHotel {
  static const String user = '/users';
  static const String album = '/photos';
}

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(ApisHotel.user)
  Future<List<ModelUser>> getUser();
  @GET(ApisHotel.album)
  Future<List<ModelAlbum>> getPhoto();
}