import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voskat/model/user/simulationResultDB.dart';

part 'simulation_result_state.freezed.dart';
part 'simulation_result_state.g.dart';

@freezed
class SimulationResultState with _$SimulationResultState {
  factory SimulationResultState({
    @Default([]) List<SimulationResultDB> simulationResultDB,
    @Default(false) bool isLoading,
  }) = _SimulationResultState;

  factory SimulationResultState.fromJson(Map<String, dynamic> json) =>
      _$SimulationResultStateFromJson(json);
}
