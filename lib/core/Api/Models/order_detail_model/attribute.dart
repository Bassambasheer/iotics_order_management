import 'package:json_annotation/json_annotation.dart';

part 'attribute.g.dart';

@JsonSerializable()
class Attribute {
  int? id;
  @JsonKey(name: 'attribute_id')
  int? attributeId;
  String? attribute;
  @JsonKey(name: 'actual_price')
  String? actualPrice;
  @JsonKey(name: 'sales_price')
  String? salesPrice;
  String? total;

  Attribute({
    this.id,
    this.attributeId,
    this.attribute,
    this.actualPrice,
    this.salesPrice,
    this.total,
  });

  factory Attribute.fromJson(Map<String, dynamic> json) {
    return _$AttributeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AttributeToJson(this);
}
