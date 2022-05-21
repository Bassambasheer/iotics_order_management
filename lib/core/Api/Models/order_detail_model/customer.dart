import 'package:json_annotation/json_annotation.dart';

part 'customer.g.dart';

@JsonSerializable()
class Customer {
  int? id;
  String? name;
  String? email;
  String? mobile;
  @JsonKey(name: 'reg_user')
  bool? regUser;

  Customer({this.id, this.name, this.email, this.mobile, this.regUser});

  factory Customer.fromJson(Map<String, dynamic> json) {
    return _$CustomerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
