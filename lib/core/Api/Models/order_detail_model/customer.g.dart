// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      mobile: json['mobile'] as String?,
      regUser: json['reg_user'] as bool?,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
      'reg_user': instance.regUser,
    };
