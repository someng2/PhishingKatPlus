import 'package:freezed_annotation/freezed_annotation.dart';

part 'simulation_result_event.freezed.dart';

@freezed
abstract class SimulationResultEvent<T> with _$SimulationResultEvent<T> {
  const factory SimulationResultEvent.getAllSimulationResult() = SelectSimulationResult;
  // const factory SimulationResultEvent.insertUser(String name, int birthYear, String gender) = InsertUser;
// const factory HomeEvent.update(int id, String content) = Update;
// const factory HomeEvent.delete(int id) = Delete;
}
