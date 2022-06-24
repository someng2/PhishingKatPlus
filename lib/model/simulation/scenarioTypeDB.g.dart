// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scenarioTypeDB.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScenarioTypeDB _$$_ScenarioTypeDBFromJson(Map<String, dynamic> json) =>
    _$_ScenarioTypeDB(
      sid: json['sid'] as String,
      aid: json['aid'] as String,
      subtype: json['subtype'] as String,
      iconactive: json['icon_active'] as String,
      icondeactive: json['icon_deactive'] as String,
      lock: json['lock'] as bool,
      score: json['score'] as int,
      medal: json['medal'] as int,
      widget: json['widget'] as String,
    );

Map<String, dynamic> _$$_ScenarioTypeDBToJson(_$_ScenarioTypeDB instance) =>
    <String, dynamic>{
      'sid': instance.sid,
      'aid': instance.aid,
      'subtype': instance.subtype,
      'icon_active': instance.iconactive,
      'icon_deactive': instance.icondeactive,
      'lock': instance.lock,
      'score': instance.score,
      'medal': instance.medal,
      'widget': instance.widget,
    };
