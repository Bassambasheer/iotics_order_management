// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusHistory _$StatusHistoryFromJson(Map<String, dynamic> json) =>
    StatusHistory(
      id: json['id'] as int?,
      statusId: json['status_id'] as int?,
      statusLabel: json['status_label'] as String?,
      time: json['time'] as String?,
    );

Map<String, dynamic> _$StatusHistoryToJson(StatusHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status_id': instance.statusId,
      'status_label': instance.statusLabel,
      'time': instance.time,
    };
