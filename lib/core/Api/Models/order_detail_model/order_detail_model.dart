import 'package:json_annotation/json_annotation.dart';

import 'order_detail.dart';

part 'order_detail_model.g.dart';

@JsonSerializable()
class OrderDetailModel {
  @JsonKey(name: 'order_detail')
  OrderDetail? orderDetail;

  OrderDetailModel({this.orderDetail});

  factory OrderDetailModel.fromJson(Map<String, dynamic> json) {
    return _$OrderDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderDetailModelToJson(this);
}
