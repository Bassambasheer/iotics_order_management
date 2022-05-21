import 'package:json_annotation/json_annotation.dart';

part 'status_history.g.dart';

@JsonSerializable()
class StatusHistory {
  int? id;
  @JsonKey(name: 'status_id')
  int? statusId;
  @JsonKey(name: 'status_label')
  String? statusLabel;
  String? time;

  StatusHistory({this.id, this.statusId, this.statusLabel, this.time});

  factory StatusHistory.fromJson(Map<String, dynamic> json) {
    return _$StatusHistoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StatusHistoryToJson(this);
}
