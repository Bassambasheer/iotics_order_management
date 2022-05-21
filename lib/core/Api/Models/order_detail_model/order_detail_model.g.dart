// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailModel _$OrderDetailModelFromJson(Map<String, dynamic> json) =>
    OrderDetailModel(
      orderDetail: json['order_detail'] == null
          ? null
          : OrderDetail.fromJson(json['order_detail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderDetailModelToJson(OrderDetailModel instance) =>
    <String, dynamic>{
      'order_detail': instance.orderDetail,
    };
