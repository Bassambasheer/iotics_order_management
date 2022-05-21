// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetail _$OrderDetailFromJson(Map<String, dynamic> json) => OrderDetail(
      id: json['id'] as int?,
      orderNo: json['order_no'] as String?,
      outletId: json['outlet_id'] as int?,
      outletName: json['outlet_name'] as String?,
      channel: json['channel'] as String?,
      note: json['note'],
      orderingService: json['ordering_service'] as String?,
      paymentMethod: json['payment_method'] as String?,
      totalItems: json['total_items'] as String?,
      taxType: json['tax_type'] as String?,
      taxPercent: json['tax_percent'] as String?,
      trnNo: json['trn_no'],
      outletPreparationTime: json['outlet_preparation_time'] as int?,
      preparationTime: json['preparation_time'] as String?,
      actualSubTotal: json['actual_sub_total'] as String?,
      subTotal: json['sub_total'] as String?,
      totalWithTax: json['total_with_tax'] as String?,
      totalWithoutTax: json['total_without_tax'] as String?,
      tax: json['tax'] as String?,
      deliveryFee: json['delivery_fee'] as String?,
      amountToPay: json['amount_to_pay'] as String?,
      redeemedAmount: json['redeemed_amount'] as String?,
      finalAmount: json['final_amount'] as String?,
      discount: json['discount'] == null
          ? null
          : Discount.fromJson(json['discount'] as Map<String, dynamic>),
      orderedAt: json['ordered_at'] as String?,
      deliveryAt: json['delivery_at'],
      status: json['status'] as String?,
      statusHistory: (json['status_history'] as List<dynamic>?)
          ?.map((e) => StatusHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      cancelled: json['cancelled'] as bool?,
      cancellationReason: json['cancellation_reason'],
      customerTotalOrder: json['customer_total_order'] as int?,
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      pickupCustomerArrived: json['pickup_customer_arrived'] as bool?,
      pickupCustomerNote: json['pickup_customer_note'],
      pickupFullfilled: json['pickup_fullfilled'] as bool?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderDetailToJson(OrderDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_no': instance.orderNo,
      'outlet_id': instance.outletId,
      'outlet_name': instance.outletName,
      'channel': instance.channel,
      'note': instance.note,
      'ordering_service': instance.orderingService,
      'payment_method': instance.paymentMethod,
      'total_items': instance.totalItems,
      'tax_type': instance.taxType,
      'tax_percent': instance.taxPercent,
      'trn_no': instance.trnNo,
      'outlet_preparation_time': instance.outletPreparationTime,
      'preparation_time': instance.preparationTime,
      'actual_sub_total': instance.actualSubTotal,
      'sub_total': instance.subTotal,
      'total_with_tax': instance.totalWithTax,
      'total_without_tax': instance.totalWithoutTax,
      'tax': instance.tax,
      'delivery_fee': instance.deliveryFee,
      'amount_to_pay': instance.amountToPay,
      'redeemed_amount': instance.redeemedAmount,
      'final_amount': instance.finalAmount,
      'discount': instance.discount,
      'ordered_at': instance.orderedAt,
      'delivery_at': instance.deliveryAt,
      'status': instance.status,
      'status_history': instance.statusHistory,
      'cancelled': instance.cancelled,
      'cancellation_reason': instance.cancellationReason,
      'customer_total_order': instance.customerTotalOrder,
      'customer': instance.customer,
      'address': instance.address,
      'pickup_customer_arrived': instance.pickupCustomerArrived,
      'pickup_customer_note': instance.pickupCustomerNote,
      'pickup_fullfilled': instance.pickupFullfilled,
      'items': instance.items,
    };
