import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
import 'customer.dart';
import 'discount.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  int? id;
  @JsonKey(name: 'order_no')
  String? orderNo;
  String? channel;
  @JsonKey(name: 'preparation_time')
  String? preparationTime;
  @JsonKey(name: 'ordering_service')
  String? orderingService;
  @JsonKey(name: 'payment_method')
  String? paymentMethod;
  String? status;
  @JsonKey(name: 'order_at')
  String? orderAt;
  @JsonKey(name: 'delivery_at')
  String? deliveryAt;
  @JsonKey(name: 'customer')
  Customer? customer;
  @JsonKey(name: 'address')
  Address? address;
  Discount? discount;
  @JsonKey(name: 'actual_sub_total')
  String? actualSubTotal;
  @JsonKey(name: 'sub_total')
  String? subTotal;
  @JsonKey(name: 'redeemed_amount')
  String? redeemedAmount;
  @JsonKey(name: 'final_amount')
  String? finalAmount;

  Datum({
    this.id,
    this.orderNo,
    this.channel,
    this.preparationTime,
    this.orderingService,
    this.paymentMethod,
    this.status,
    this.orderAt,
    this.deliveryAt,
    this.customer,
    this.address,
    this.discount,
    this.actualSubTotal,
    this.subTotal,
    this.redeemedAmount,
    this.finalAmount,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
