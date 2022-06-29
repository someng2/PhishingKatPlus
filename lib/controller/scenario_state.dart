import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voskat/model/simulation/scenarioDB.dart';

part 'scenario_state.freezed.dart';
part 'scenario_state.g.dart';

@freezed
class ScenarioState with _$ScenarioState {
  factory ScenarioState({
    @Default([]) List<ScenarioDB> scenarioDB,
    @Default(false) bool isLoading,
  }) = _ScenarioState;

  factory ScenarioState.fromJson(Map<String, dynamic> json) =>
      _$ScenarioStateFromJson(json);
}