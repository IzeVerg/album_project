import 'package:dio/dio.dart';
import 'package:eclipse_tz/data/models_album/model_album.dart';
import 'package:eclipse_tz/data/models_user/model_user.dart';
import 'package:eclipse_tz/domain/service/service.dart';

class Repository {

  Future<List<ModelUser?>> getUser() async {
    List<ModelUser?> users = [];
    try {
      final ApiClient client = ApiClient(Dio(BaseOptions(contentType: "application/json")));
      users = await client.getUser();
    } catch (e) {
      users = [];
    }
    return users;
  }

  Future<List<ModelAlbum?>> getAlbum() async {
    List<ModelAlbum?> albums = [];
    try {
      final ApiClient client = ApiClient(Dio(BaseOptions(contentType: "application/json")));
      albums = await client.getPhoto();
    } catch (e) {
      albums = [];
    }
    return albums;
  }
}