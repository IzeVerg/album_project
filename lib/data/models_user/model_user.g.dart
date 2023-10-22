// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelUserImpl _$$ModelUserImplFromJson(Map<String, dynamic> json) =>
    _$ModelUserImpl(
      name: json['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      website: json['website'] as String,
      company:
          AboutTheCompany.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ModelUserImplToJson(_$ModelUserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
      'company': instance.company,
    };

_$AboutTheCompanyImpl _$$AboutTheCompanyImplFromJson(
        Map<String, dynamic> json) =>
    _$AboutTheCompanyImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$AboutTheCompanyImplToJson(
        _$AboutTheCompanyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
