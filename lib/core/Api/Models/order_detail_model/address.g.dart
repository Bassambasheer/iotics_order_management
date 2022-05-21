// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      id: json['id'] as int?,
      addressTypeId: json['address_type_id'] as int?,
      addressType: json['address_type'] as String?,
      address1: json['address_1'],
      address: json['address'] as String?,
      lat: json['lat'],
      lng: json['lng'],
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'id': instance.id,
      'address_type_id': instance.addressTypeId,
      'address_type': instance.addressType,
      'address_1': instance.address1,
      'address': instance.address,
      'lat': instance.lat,
      'lng': instance.lng,
    };
