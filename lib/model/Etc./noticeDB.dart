// ignore_for_file: file_names
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'noticeDB.freezed.dart';
part 'noticeDB.g.dart';

@freezed
class NoticeDB with _$NoticeDB {
  factory NoticeDB({
    required int nid,
    required String title,
    required String content,
    required String create_time,
    required String update_time,
  }) = _NoticeDB;

  factory NoticeDB.fromJson(Map<String, dynamic> json) =>
      _$NoticeDBFromJson(json);
}