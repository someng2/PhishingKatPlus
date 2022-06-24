// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appContentsDB.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppContentsDB _$$_AppContentsDBFromJson(Map<String, dynamic> json) =>
    _$_AppContentsDB(
      acid: json['ac_id'] as String,
      sid: json['sid'] as String,
      aid: json['aid'] as String,
      order: json['order'] as int,
      ctype: json['c_type'] as String,
      contents: json['contents'] as String,
      hasNextAction: json['hasNextAction'] as int,
    );

Map<String, dynamic> _$$_AppContentsDBToJson(_$_AppContentsDB instance) =>
    <String, dynamic>{
      'ac_id': instance.acid,
      'sid': instance.sid,
      'aid': instance.aid,
      'order': instance.order,
      'c_type': instance.ctype,
      'contents': instance.contents,
      'hasNextAction': instance.hasNextAction,
    };
