part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getUserData() = _GetUserData;

  const factory HomeEvent.getAlbumData() = _GetAlbumData;

}
