import 'package:json_annotation/json_annotation.dart';

import 'attribute.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  int? id;
  @JsonKey(name: 'menu_id')
  int? menuId;
  @JsonKey(name: 'menu_name')
  String? menuName;
  int? quantity;
  @JsonKey(name: 'unit_price')
  String? unitPrice;
  @JsonKey(name: 'unit_sales_price')
  String? unitSalesPrice;
  @JsonKey(name: 'sub_total')
  String? subTotal;
  String? total;
  bool? cancelled;
  dynamic note;
  List<Attribute>? attributes;

  Item({
    this.id,
    this.menuId,
    this.menuName,
    this.quantity,
    this.unitPrice,
    this.unitSalesPrice,
    this.subTotal,
    this.total,
    this.cancelled,
    this.note,
    this.attributes,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
