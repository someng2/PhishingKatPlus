// ignore_for_file: file_names
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'userDB.freezed.dart';

part 'userDB.g.dart';

@freezed
class UserDB with _$UserDB {
  factory UserDB({
    required int uid,
    required String name,
    required int age,
  }) = _UserDB;

  factory UserDB.fromJson(Map<String, dynamic> json) =>
      _$UserDBFromJson(json);
}
