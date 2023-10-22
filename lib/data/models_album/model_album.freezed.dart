// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_album.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelAlbum _$ModelAlbumFromJson(Map<String, dynamic> json) {
  return _ModelAlbum.fromJson(json);
}

/// @nodoc
mixin _$ModelAlbum {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelAlbumCopyWith<ModelAlbum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelAlbumCopyWith<$Res> {
  factory $ModelAlbumCopyWith(
          ModelAlbum value, $Res Function(ModelAlbum) then) =
      _$ModelAlbumCopyWithImpl<$Res, ModelAlbum>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$ModelAlbumCopyWithImpl<$Res, $Val extends ModelAlbum>
    implements $ModelAlbumCopyWith<$Res> {
  _$ModelAlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelAlbumImplCopyWith<$Res>
    implements $ModelAlbumCopyWith<$Res> {
  factory _$$ModelAlbumImplCopyWith(
          _$ModelAlbumImpl value, $Res Function(_$ModelAlbumImpl) then) =
      __$$ModelAlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$ModelAlbumImplCopyWithImpl<$Res>
    extends _$ModelAlbumCopyWithImpl<$Res, _$ModelAlbumImpl>
    implements _$$ModelAlbumImplCopyWith<$Res> {
  __$$ModelAlbumImplCopyWithImpl(
      _$ModelAlbumImpl _value, $Res Function(_$ModelAlbumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$ModelAlbumImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelAlbumImpl implements _ModelAlbum {
  const _$ModelAlbumImpl({required this.url});

  factory _$ModelAlbumImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelAlbumImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'ModelAlbum(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelAlbumImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelAlbumImplCopyWith<_$ModelAlbumImpl> get copyWith =>
      __$$ModelAlbumImplCopyWithImpl<_$ModelAlbumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelAlbumImplToJson(
      this,
    );
  }
}

abstract class _ModelAlbum implements ModelAlbum {
  const factory _ModelAlbum({required final String url}) = _$ModelAlbumImpl;

  factory _ModelAlbum.fromJson(Map<String, dynamic> json) =
      _$ModelAlbumImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$ModelAlbumImplCopyWith<_$ModelAlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
