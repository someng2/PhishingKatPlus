// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pairDB.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PairDB _$$_PairDBFromJson(Map<String, dynamic> json) => _$_PairDB(
      sid: json['sid'] as String,
      pid: json['pid'] as String,
      acid: json['ac_id'] as String,
      index: json['index'] as int,
      currentActionId: json['currentActionId'] as String,
      nextActionId: json['nextActionId'] as String,
    );

Map<String, dynamic> _$$_PairDBToJson(_$_PairDB instance) => <String, dynamic>{
      'sid': instance.sid,
      'pid': instance.pid,
      'ac_id': instance.acid,
      'index': instance.index,
      'currentActionId': instance.currentActionId,
      'nextActionId': instance.nextActionId,
    };
