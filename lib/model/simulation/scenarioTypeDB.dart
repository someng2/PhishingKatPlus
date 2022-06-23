// ignore_for_file: file_names
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scenarioTypeDB.freezed.dart';

part 'scenarioTypeDB.g.dart';

@freezed
class ScenarioTypeDB with _$ScenarioTypeDB {
  factory ScenarioTypeDB({
    required String sid,
    required String aid,
    required String subtype,
    @JsonKey(name:'icon_active') required String iconactive,
    @JsonKey(name:'icon_deactive') required String icondeactive,
    required bool lock,
    required int score,
    required int medal,
    required String widget,
  }) = _ScenarioTypeDB;

  factory ScenarioTypeDB.fromJson(Map<String, dynamic> json) =>
      _$ScenarioTypeDBFromJson(json);
}
