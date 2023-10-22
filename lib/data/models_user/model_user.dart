import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_user.freezed.dart';
part 'model_user.g.dart';

@freezed
class ModelUser with _$ModelUser{
  const factory ModelUser({
    required String name,
    required String username,
    required String email,
    required String phone,
    required String website,
    required AboutTheCompany company,
  }) = _ModelUser;

  factory ModelUser.fromJson(Map<String, Object?> json)
  => _$ModelUserFromJson(json);
}

@freezed
class AboutTheCompany with _$AboutTheCompany {
  const factory AboutTheCompany({
    required String name,
  }) = _AboutTheCompany;

  factory AboutTheCompany.fromJson(Map<String, dynamic> json) => _$AboutTheCompanyFromJson(json);
}
