// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveOrdersModel _$LiveOrdersModelFromJson(Map<String, dynamic> json) =>
    LiveOrdersModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LiveOrdersModelToJson(LiveOrdersModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
