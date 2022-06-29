// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catType_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatTypeState _$$_CatTypeStateFromJson(Map<String, dynamic> json) =>
    _$_CatTypeState(
      catTypeDB: (json['catTypeDB'] as List<dynamic>?)
              ?.map((e) => ResultCatTypeDB.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CatTypeStateToJson(_$_CatTypeState instance) =>
    <String, dynamic>{
      'catTypeDB': instance.catTypeDB,
      'isLoading': instance.isLoading,
    };
