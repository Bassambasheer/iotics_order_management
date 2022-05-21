import 'package:json_annotation/json_annotation.dart';

part 'discount.g.dart';

@JsonSerializable()
class Discount {
  @JsonKey(name: 'has_discount')
  bool? hasDiscount;
  dynamic id;
  dynamic code;
  dynamic value;
  String? amount;

  Discount({this.hasDiscount, this.id, this.code, this.value, this.amount});

  factory Discount.fromJson(Map<String, dynamic> json) {
    return _$DiscountFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DiscountToJson(this);
}
