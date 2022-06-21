// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Contents _$$_ContentsFromJson(Map<String, dynamic> json) => _$_Contents(
      ac_id: json['ac_id'] as String,
      sid: json['sid'] as String,
      aid: json['aid'] as String,
      order: json['order'] as int,
      c_type: json['c_type'] as String,
      contents: json['contents'],
      hasNextAction: json['hasNextAction'] as int,
      reg_date: DateTime.parse(json['reg_date'] as String),
      mod_date: DateTime.parse(json['mod_date'] as String),
    );

Map<String, dynamic> _$$_ContentsToJson(_$_Contents instance) =>
    <String, dynamic>{
      'ac_id': instance.ac_id,
      'sid': instance.sid,
      'aid': instance.aid,
      'order': instance.order,
      'c_type': instance.c_type,
      'contents': instance.contents,
      'hasNextAction': instance.hasNextAction,
      'reg_date': instance.reg_date.toIso8601String(),
      'mod_date': instance.mod_date.toIso8601String(),
    };
