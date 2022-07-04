// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userDB.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDB _$$_UserDBFromJson(Map<String, dynamic> json) => _$_UserDB(
      uid: json['uid'] as int,
      name: json['name'] as String,
      birthYear: json['birthYear'] as int,
      gender: json['gender'] as String,
      interest_keyword: json['interest_keyword'] as String,
      reg_date: json['reg_date'] as String,
      mod_date: json['mod_date'] as String,
    );

Map<String, dynamic> _$$_UserDBToJson(_$_UserDB instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'birthYear': instance.birthYear,
      'gender': instance.gender,
      'interest_keyword': instance.interest_keyword,
      'reg_date': instance.reg_date,
      'mod_date': instance.mod_date,
    };
