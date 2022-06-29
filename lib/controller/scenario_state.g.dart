// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scenario_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScenarioState _$$_ScenarioStateFromJson(Map<String, dynamic> json) =>
    _$_ScenarioState(
      scenarioDB: (json['scenarioDB'] as List<dynamic>?)
              ?.map((e) => ScenarioDB.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ScenarioStateToJson(_$_ScenarioState instance) =>
    <String, dynamic>{
      'scenarioDB': instance.scenarioDB,
      'isLoading': instance.isLoading,
    };
