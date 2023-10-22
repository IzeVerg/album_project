import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_album.freezed.dart';
part 'model_album.g.dart';

@freezed
class ModelAlbum with _$ModelAlbum{
  const factory ModelAlbum({
    required String url,
  }) = _ModelAlbum;

  factory ModelAlbum.fromJson(Map<String, Object?> json)
  => _$ModelAlbumFromJson(json);
}
