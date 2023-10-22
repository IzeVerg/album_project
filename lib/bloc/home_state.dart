part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
  @Default(AlbumStatusDownloading.initial) AlbumStatusDownloading albumStatus,
    @Default(UsersStatusDownloading.initial) UsersStatusDownloading userStatus,
    @Default(<ModelUser>[]) List<ModelUser?>? users,
    @Default(<ModelAlbum>[]) List<ModelAlbum?>? photos,
  }) = _HomeState;
}