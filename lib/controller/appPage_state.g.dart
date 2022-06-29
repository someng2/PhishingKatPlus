// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appPage_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppPageState _$$_AppPageStateFromJson(Map<String, dynamic> json) =>
    _$_AppPageState(
      appPageDB: (json['appPageDB'] as List<dynamic>?)
              ?.map((e) => AppPageDB.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AppPageStateToJson(_$_AppPageState instance) =>
    <String, dynamic>{
      'appPageDB': instance.appPageDB,
      'isLoading': instance.isLoading,
    };
