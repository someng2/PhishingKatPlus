import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voskat/model/simulation/scenarioTypeDB.dart';

part 'scenarioType_state.freezed.dart';
part 'scenarioType_state.g.dart';

@freezed
class ScenarioTypeState with _$ScenarioTypeState {
  factory ScenarioTypeState({
    @Default([]) List<ScenarioTypeDB> scenarioTypeDB,
    @Default(false) bool isLoading,
  }) = _ScenarioTypeState;

  factory ScenarioTypeState.fromJson(Map<String, dynamic> json) =>
      _$ScenarioTypeStateFromJson(json);
}