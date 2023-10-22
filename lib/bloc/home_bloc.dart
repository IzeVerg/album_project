import 'package:eclipse_tz/data/models_album/model_album.dart';
import 'package:eclipse_tz/domain/enum/albums_status_downloading.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eclipse_tz/data/models_user/model_user.dart';
import 'package:eclipse_tz/domain/enum/users_status_downloading.dart';
import 'package:eclipse_tz/domain/repository/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required Repository repository,
  })  : _repository = repository,
        super(const HomeState()) {
    on<_GetUserData>(_getUserData);
    on<_GetAlbumData>(_getAlbumData);
  }

  final Repository _repository;

  Future<void> _getUserData(_GetUserData event, Emitter emit) async {
    List<ModelUser?>? model;
    try {
      emit(state.copyWith(userStatus: UsersStatusDownloading.loading));
      model = await _repository.getUser();
      emit(state.copyWith(userStatus: UsersStatusDownloading.loaded));
    } catch (e) {
      emit(state.copyWith(userStatus: UsersStatusDownloading.error));
    }
    emit(state.copyWith(users: model));
  }

  Future<void> _getAlbumData(_GetAlbumData event, Emitter emit) async {
    List<ModelAlbum?>? model;
    try {
      emit(state.copyWith(albumStatus: AlbumStatusDownloading.loading));
      model = await _repository.getAlbum();
      emit(state.copyWith(albumStatus: AlbumStatusDownloading.loaded));
    } catch (e) {
      emit(state.copyWith(albumStatus: AlbumStatusDownloading.error));
    }
    emit(state.copyWith(photos: model));
  }
}