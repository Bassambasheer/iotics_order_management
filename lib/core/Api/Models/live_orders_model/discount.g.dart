// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Discount _$DiscountFromJson(Map<String, dynamic> json) => Discount(
      hasDiscount: json['has_discount'] as bool?,
      id: json['id'],
      code: json['code'],
      value: json['value'],
      amount: json['amount'] as String?,
    );

Map<String, dynamic> _$DiscountToJson(Discount instance) => <String, dynamic>{
      'has_discount': instance.hasDiscount,
      'id': instance.id,
      'code': instance.code,
      'value': instance.value,
      'amount': instance.amount,
    };
