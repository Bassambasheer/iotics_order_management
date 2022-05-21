// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: json['id'] as int?,
      menuId: json['menu_id'] as int?,
      menuName: json['menu_name'] as String?,
      quantity: json['quantity'] as int?,
      unitPrice: json['unit_price'] as String?,
      unitSalesPrice: json['unit_sales_price'] as String?,
      subTotal: json['sub_total'] as String?,
      total: json['total'] as String?,
      cancelled: json['cancelled'] as bool?,
      note: json['note'],
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => Attribute.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'menu_id': instance.menuId,
      'menu_name': instance.menuName,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'unit_sales_price': instance.unitSalesPrice,
      'sub_total': instance.subTotal,
      'total': instance.total,
      'cancelled': instance.cancelled,
      'note': instance.note,
      'attributes': instance.attributes,
    };
