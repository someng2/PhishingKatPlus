// ignore_for_file: file_names
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appPageDB.freezed.dart';

part 'appPageDB.g.dart';

@freezed
class AppPageDB with _$AppPageDB {
  factory AppPageDB({
    @JsonKey(name:'ap_id') required String apid,
    required String widget
  }) = _AppPageDB;

  factory AppPageDB.fromJson(Map<String, dynamic> json) =>
      _$AppPageDBFromJson(json);
}
