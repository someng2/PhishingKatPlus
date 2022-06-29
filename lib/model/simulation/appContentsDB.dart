// ignore_for_file: file_names
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appContentsDB.freezed.dart';

part 'appContentsDB.g.dart';

@freezed
class AppContentsDB with _$AppContentsDB {
  factory AppContentsDB({
    @JsonKey(name:'ac_id') required String acid,
    required dynamic sid,
    required dynamic aid,
    required int order,
    @JsonKey(name:'c_type') required String ctype,
    required dynamic contents,
    required int hasNextAction,
  }) = _AppContentsDB;

  factory AppContentsDB.fromJson(Map<String, dynamic> json) =>
      _$AppContentsDBFromJson(json);
}
