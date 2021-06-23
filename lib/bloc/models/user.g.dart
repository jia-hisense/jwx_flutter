// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..userId = json['userId'] as int
    ..name = json['name'] as String
    ..email = json['email'] as String
    ..phone = json['phone'] as String
    ..type = json['type'] as String
    ..token = json['token'] as String
    ..renewalToken = json['renewalToken'] as String;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'type': instance.type,
      'token': instance.token,
      'renewalToken': instance.renewalToken,
    };
