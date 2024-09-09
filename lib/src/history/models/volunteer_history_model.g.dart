// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volunteer_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VolunteerHistoryModelImpl _$$VolunteerHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VolunteerHistoryModelImpl(
      eventId: json['event_id'] as String,
      adminId: json['admin_id'] as String,
      hours: json['hours'] as String,
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$$VolunteerHistoryModelImplToJson(
        _$VolunteerHistoryModelImpl instance) =>
    <String, dynamic>{
      'event_id': instance.eventId,
      'admin_id': instance.adminId,
      'hours': instance.hours,
      'reason': instance.reason,
    };
