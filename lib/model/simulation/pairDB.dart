// ignore_for_file: file_names
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pairDB.freezed.dart';

part 'pairDB.g.dart';

@freezed
class PairDB with _$PairDB {
  factory PairDB({
    required String sid,
    required String pid,
    @JsonKey(name:'ac_id') required String acid,
    required int index,
    required String currentActionId,
    required String nextActionId
  }) = _PairDB;

  factory PairDB.fromJson(Map<String, dynamic> json) =>
      _$PairDBFromJson(json);
}
