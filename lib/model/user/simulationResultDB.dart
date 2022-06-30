// ignore_for_file: file_names
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'simulationResultDB.freezed.dart';

part 'simulationResultDB.g.dart';

@freezed
class SimulationResultDB with _$SimulationResultDB {
  factory SimulationResultDB({
    required int uid,
    required String sid,
    required String simulationType,
    required String worst_ua_keyword1,
    required String worst_ua_keyword2,
    required String create_time,
    required String update_time,
  }) = _SimulationResultDB;

  factory SimulationResultDB.fromJson(Map<String, dynamic> json) =>
      _$SimulationResultDBFromJson(json);
}