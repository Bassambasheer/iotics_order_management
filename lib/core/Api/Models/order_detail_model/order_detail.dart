import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
import 'customer.dart';
import 'discount.dart';
import 'item.dart';
import 'status_history.dart';

part 'order_detail.g.dart';

@JsonSerializable()
class OrderDetail {
  int? id;
  @JsonKey(name: 'order_no')
  String? orderNo;
  @JsonKey(name: 'outlet_id')
  int? outletId;
  @JsonKey(name: 'outlet_name')
  String? outletName;
  String? channel;
  dynamic note;
  @JsonKey(name: 'ordering_service')
  String? orderingService;
  @JsonKey(name: 'payment_method')
  String? paymentMethod;
  @JsonKey(name: 'total_items')
  String? totalItems;
  @JsonKey(name: 'tax_type')
  String? taxType;
  @JsonKey(name: 'tax_percent')
  String? taxPercent;
  @JsonKey(name: 'trn_no')
  dynamic trnNo;
  @JsonKey(name: 'outlet_preparation_time')
  int? outletPreparationTime;
  @JsonKey(name: 'preparation_time')
  String? preparationTime;
  @JsonKey(name: 'actual_sub_total')
  String? actualSubTotal;
  @JsonKey(name: 'sub_total')
  String? subTotal;
  @JsonKey(name: 'total_with_tax')
  String? totalWithTax;
  @JsonKey(name: 'total_without_tax')
  String? totalWithoutTax;
  String? tax;
  @JsonKey(name: 'delivery_fee')
  String? deliveryFee;
  @JsonKey(name: 'amount_to_pay')
  String? amountToPay;
  @JsonKey(name: 'redeemed_amount')
  String? redeemedAmount;
  @JsonKey(name: 'final_amount')
  String? finalAmount;
  Discount? discount;
  @JsonKey(name: 'ordered_at')
  String? orderedAt;
  @JsonKey(name: 'delivery_at')
  dynamic deliveryAt;
  String? status; 
  @JsonKey(name: 'status_history')
  List<StatusHistory>? statusHistory;
  bool? cancelled;
  @JsonKey(name: 'cancellation_reason')
  dynamic cancellationReason;
  @JsonKey(name: 'customer_total_order')
  int? customerTotalOrder;
  Customer? customer;
  Address? address;
  @JsonKey(name: 'pickup_customer_arrived')
  bool? pickupCustomerArrived;
  @JsonKey(name: 'pickup_customer_note')
  dynamic pickupCustomerNote;
  @JsonKey(name: 'pickup_fullfilled')
  bool? pickupFullfilled;
  @JsonKey(name: 'items')
  List<Item>? items;

  OrderDetail({
    this.id,
    this.orderNo,
    this.outletId,
    this.outletName,
    this.channel,
    this.note,
    this.orderingService,
    this.paymentMethod,
    this.totalItems,
    this.taxType,
    this.taxPercent,
    this.trnNo,
    this.outletPreparationTime,
    this.preparationTime,
    this.actualSubTotal,
    this.subTotal,
    this.totalWithTax,
    this.totalWithoutTax,
    this.tax,
    this.deliveryFee,
    this.amountToPay,
    this.redeemedAmount,
    this.finalAmount,
    this.discount,
    this.orderedAt,
    this.deliveryAt,
    this.status,
    this.statusHistory,
    this.cancelled,
    this.cancellationReason,
    this.customerTotalOrder,
    this.customer,
    this.address,
    this.pickupCustomerArrived,
    this.pickupCustomerNote,
    this.pickupFullfilled,
    this.items,
  });

  factory OrderDetail.fromJson(Map<String, dynamic> json) {
    return _$OrderDetailFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderDetailToJson(this);
}
