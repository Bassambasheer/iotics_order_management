// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attribute _$AttributeFromJson(Map<String, dynamic> json) => Attribute(
      id: json['id'] as int?,
      attributeId: json['attribute_id'] as int?,
      attribute: json['attribute'] as String?,
      actualPrice: json['actual_price'] as String?,
      salesPrice: json['sales_price'] as String?,
      total: json['total'] as String?,
    );

Map<String, dynamic> _$AttributeToJson(Attribute instance) => <String, dynamic>{
      'id': instance.id,
      'attribute_id': instance.attributeId,
      'attribute': instance.attribute,
      'actual_price': instance.actualPrice,
      'sales_price': instance.salesPrice,
      'total': instance.total,
    };
