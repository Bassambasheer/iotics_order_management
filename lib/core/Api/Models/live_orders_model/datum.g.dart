// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      orderNo: json['order_no'] as String?,
      channel: json['channel'] as String?,
      preparationTime: json['preparation_time'] as String?,
      orderingService: json['ordering_service'] as String?,
      paymentMethod: json['payment_method'] as String?,
      status: json['status'] as String?,
      orderAt: json['order_at'] as String?,
      deliveryAt: json['delivery_at'] as String?,
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      discount: json['discount'] == null
          ? null
          : Discount.fromJson(json['discount'] as Map<String, dynamic>),
      actualSubTotal: json['actual_sub_total'] as String?,
      subTotal: json['sub_total'] as String?,
      redeemedAmount: json['redeemed_amount'] as String?,
      finalAmount: json['final_amount'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'order_no': instance.orderNo,
      'channel': instance.channel,
      'preparation_time': instance.preparationTime,
      'ordering_service': instance.orderingService,
      'payment_method': instance.paymentMethod,
      'status': instance.status,
      'order_at': instance.orderAt,
      'delivery_at': instance.deliveryAt,
      'customer': instance.customer,
      'address': instance.address,
      'discount': instance.discount,
      'actual_sub_total': instance.actualSubTotal,
      'sub_total': instance.subTotal,
      'redeemed_amount': instance.redeemedAmount,
      'final_amount': instance.finalAmount,
    };
