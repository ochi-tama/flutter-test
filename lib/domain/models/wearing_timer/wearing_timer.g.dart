// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wearing_timer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WearingTimer _$_$_WearingTimerFromJson(Map<String, dynamic> json) {
  return _$_WearingTimer(
    startDate: DateTime.parse(json['startDate'] as String),
    duration: json['duration'] as int,
    id: json['id'] as String?,
    endDate: json['endDate'] == null
        ? null
        : DateTime.parse(json['endDate'] as String),
    actualEndDate: json['actualEndDate'] == null
        ? null
        : DateTime.parse(json['actualEndDate'] as String),
  );
}

Map<String, dynamic> _$_$_WearingTimerToJson(_$_WearingTimer instance) =>
    <String, dynamic>{
      'startDate': instance.startDate.toIso8601String(),
      'duration': instance.duration,
      'id': instance.id,
      'endDate': instance.endDate?.toIso8601String(),
      'actualEndDate': instance.actualEndDate?.toIso8601String(),
    };
