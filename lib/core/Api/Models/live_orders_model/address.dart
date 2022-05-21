import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  int? id;
  @JsonKey(name: 'address_type_id')
  int? addressTypeId;
  @JsonKey(name: 'address_type')
  String? addressType;
  @JsonKey(name: 'address_1')
  dynamic address1;
  String? address;
  dynamic lat;
  dynamic lng;

  Address({
    this.id,
    this.addressTypeId,
    this.addressType,
    this.address1,
    this.address,
    this.lat,
    this.lng,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return _$AddressFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
