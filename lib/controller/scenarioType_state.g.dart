// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scenarioType_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScenarioTypeState _$$_ScenarioTypeStateFromJson(Map<String, dynamic> json) =>
    _$_ScenarioTypeState(
      scenarioTypeDB: (json['scenarioTypeDB'] as List<dynamic>?)
              ?.map((e) => ScenarioTypeDB.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ScenarioTypeStateToJson(
        _$_ScenarioTypeState instance) =>
    <String, dynamic>{
      'scenarioTypeDB': instance.scenarioTypeDB,
      'isLoading': instance.isLoading,
    };
