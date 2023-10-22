// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelUser _$ModelUserFromJson(Map<String, dynamic> json) {
  return _ModelUser.fromJson(json);
}

/// @nodoc
mixin _$ModelUser {
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  AboutTheCompany get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelUserCopyWith<ModelUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelUserCopyWith<$Res> {
  factory $ModelUserCopyWith(ModelUser value, $Res Function(ModelUser) then) =
      _$ModelUserCopyWithImpl<$Res, ModelUser>;
  @useResult
  $Res call(
      {String name,
      String username,
      String email,
      String phone,
      String website,
      AboutTheCompany company});

  $AboutTheCompanyCopyWith<$Res> get company;
}

/// @nodoc
class _$ModelUserCopyWithImpl<$Res, $Val extends ModelUser>
    implements $ModelUserCopyWith<$Res> {
  _$ModelUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? username = null,
    Object? email = null,
    Object? phone = null,
    Object? website = null,
    Object? company = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as AboutTheCompany,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AboutTheCompanyCopyWith<$Res> get company {
    return $AboutTheCompanyCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModelUserImplCopyWith<$Res>
    implements $ModelUserCopyWith<$Res> {
  factory _$$ModelUserImplCopyWith(
          _$ModelUserImpl value, $Res Function(_$ModelUserImpl) then) =
      __$$ModelUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String username,
      String email,
      String phone,
      String website,
      AboutTheCompany company});

  @override
  $AboutTheCompanyCopyWith<$Res> get company;
}

/// @nodoc
class __$$ModelUserImplCopyWithImpl<$Res>
    extends _$ModelUserCopyWithImpl<$Res, _$ModelUserImpl>
    implements _$$ModelUserImplCopyWith<$Res> {
  __$$ModelUserImplCopyWithImpl(
      _$ModelUserImpl _value, $Res Function(_$ModelUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? username = null,
    Object? email = null,
    Object? phone = null,
    Object? website = null,
    Object? company = null,
  }) {
    return _then(_$ModelUserImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as AboutTheCompany,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelUserImpl implements _ModelUser {
  const _$ModelUserImpl(
      {required this.name,
      required this.username,
      required this.email,
      required this.phone,
      required this.website,
      required this.company});

  factory _$ModelUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelUserImplFromJson(json);

  @override
  final String name;
  @override
  final String username;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String website;
  @override
  final AboutTheCompany company;

  @override
  String toString() {
    return 'ModelUser(name: $name, username: $username, email: $email, phone: $phone, website: $website, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.company, company) || other.company == company));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, username, email, phone, website, company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelUserImplCopyWith<_$ModelUserImpl> get copyWith =>
      __$$ModelUserImplCopyWithImpl<_$ModelUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelUserImplToJson(
      this,
    );
  }
}

abstract class _ModelUser implements ModelUser {
  const factory _ModelUser(
      {required final String name,
      required final String username,
      required final String email,
      required final String phone,
      required final String website,
      required final AboutTheCompany company}) = _$ModelUserImpl;

  factory _ModelUser.fromJson(Map<String, dynamic> json) =
      _$ModelUserImpl.fromJson;

  @override
  String get name;
  @override
  String get username;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get website;
  @override
  AboutTheCompany get company;
  @override
  @JsonKey(ignore: true)
  _$$ModelUserImplCopyWith<_$ModelUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AboutTheCompany _$AboutTheCompanyFromJson(Map<String, dynamic> json) {
  return _AboutTheCompany.fromJson(json);
}

/// @nodoc
mixin _$AboutTheCompany {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutTheCompanyCopyWith<AboutTheCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutTheCompanyCopyWith<$Res> {
  factory $AboutTheCompanyCopyWith(
          AboutTheCompany value, $Res Function(AboutTheCompany) then) =
      _$AboutTheCompanyCopyWithImpl<$Res, AboutTheCompany>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AboutTheCompanyCopyWithImpl<$Res, $Val extends AboutTheCompany>
    implements $AboutTheCompanyCopyWith<$Res> {
  _$AboutTheCompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AboutTheCompanyImplCopyWith<$Res>
    implements $AboutTheCompanyCopyWith<$Res> {
  factory _$$AboutTheCompanyImplCopyWith(_$AboutTheCompanyImpl value,
          $Res Function(_$AboutTheCompanyImpl) then) =
      __$$AboutTheCompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$AboutTheCompanyImplCopyWithImpl<$Res>
    extends _$AboutTheCompanyCopyWithImpl<$Res, _$AboutTheCompanyImpl>
    implements _$$AboutTheCompanyImplCopyWith<$Res> {
  __$$AboutTheCompanyImplCopyWithImpl(
      _$AboutTheCompanyImpl _value, $Res Function(_$AboutTheCompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$AboutTheCompanyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AboutTheCompanyImpl implements _AboutTheCompany {
  const _$AboutTheCompanyImpl({required this.name});

  factory _$AboutTheCompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AboutTheCompanyImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'AboutTheCompany(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutTheCompanyImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutTheCompanyImplCopyWith<_$AboutTheCompanyImpl> get copyWith =>
      __$$AboutTheCompanyImplCopyWithImpl<_$AboutTheCompanyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AboutTheCompanyImplToJson(
      this,
    );
  }
}

abstract class _AboutTheCompany implements AboutTheCompany {
  const factory _AboutTheCompany({required final String name}) =
      _$AboutTheCompanyImpl;

  factory _AboutTheCompany.fromJson(Map<String, dynamic> json) =
      _$AboutTheCompanyImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$AboutTheCompanyImplCopyWith<_$AboutTheCompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
