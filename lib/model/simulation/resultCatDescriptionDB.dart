// ignore_for_file: file_names
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resultCatDescriptionDB.freezed.dart';

part 'resultCatDescriptionDB.g.dart';

@freezed
class ResultCatDescriptionDB with _$ResultCatDescriptionDB {
  factory ResultCatDescriptionDB({
    @JsonKey(name:'cat_id') required String catid,
    required String catDescription,
    required String description,
  }) = _ResultCatDescriptionDB;

  factory ResultCatDescriptionDB.fromJson(Map<String, dynamic> json) =>
      _$ResultCatDescriptionDBFromJson(json);
}
