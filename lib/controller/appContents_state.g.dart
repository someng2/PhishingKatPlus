// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appContents_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppContentsState _$$_AppContentsStateFromJson(Map<String, dynamic> json) =>
    _$_AppContentsState(
      appContentsDB: (json['appContentsDB'] as List<dynamic>?)
              ?.map((e) => AppContentsDB.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AppContentsStateToJson(_$_AppContentsState instance) =>
    <String, dynamic>{
      'appContentsDB': instance.appContentsDB,
      'isLoading': instance.isLoading,
    };
