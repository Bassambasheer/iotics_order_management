import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'live_orders_model.g.dart';

@JsonSerializable()
class LiveOrdersModel {
  List<Datum>? data;

  LiveOrdersModel({this.data});

  factory LiveOrdersModel.fromJson(Map<String, dynamic> json) {
    return _$LiveOrdersModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LiveOrdersModelToJson(this);
}
