// ignore_for_file: file_names
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scenarioDB.freezed.dart';

part 'scenarioDB.g.dart';

@freezed
class ScenarioDB with _$ScenarioDB {
  factory ScenarioDB({
    required String sid,
    required String medium,
    required String phoneNumber,
    required String type,
    required String subtype,
    required int score,
  }) = _ScenarioDB;

  factory ScenarioDB.fromJson(Map<String, dynamic> json) =>
      _$ScenarioDBFromJson(json);
}
