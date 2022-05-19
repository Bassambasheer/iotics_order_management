import 'package:json_annotation/json_annotation.dart';

part 'sign_up_model.g.dart';

@JsonSerializable()
class SignUpModel {
  @JsonKey(name: "username")
  String? username;
  @JsonKey(name: "password")
  String? password;

  SignUpModel({this.username, this.password});
  SignUpModel.create({required this.username, required this.password});

  factory SignUpModel.fromJson(Map<String, dynamic> json) {
    return _$SignUpModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignUpModelToJson(this);
}
