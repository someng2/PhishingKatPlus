// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scenarioDB.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScenarioDB _$$_ScenarioDBFromJson(Map<String, dynamic> json) =>
    _$_ScenarioDB(
      sid: json['sid'] as String,
      medium: json['medium'] as String,
      phoneNumber: json['phoneNumber'] as String,
      type: json['type'] as String,
      subtype: json['subtype'] as String,
      score: json['score'] as int,
    );

Map<String, dynamic> _$$_ScenarioDBToJson(_$_ScenarioDB instance) =>
    <String, dynamic>{
      'sid': instance.sid,
      'medium': instance.medium,
      'phoneNumber': instance.phoneNumber,
      'type': instance.type,
      'subtype': instance.subtype,
      'score': instance.score,
    };
