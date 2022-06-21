// ignore_for_file: file_names
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contents.freezed.dart';

part 'contents.g.dart';

@freezed
class Contents with _$Contents {
  factory Contents({
    required String ac_id,
    required String sid,
    required String aid,
    required int order,
    required String c_type,
    required dynamic contents,
    required int hasNextAction,
    required DateTime reg_date,
    required DateTime mod_date,

  }) = _Contents;

  factory Contents.fromJson(Map<String, dynamic> json) =>
      _$ContentsFromJson(json);
}
