// ignore_for_file: file_names
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resultCatTypeDB.freezed.dart';

part 'resultCatTypeDB.g.dart';

@freezed
class ResultCatTypeDB with _$ResultCatTypeDB {
  factory ResultCatTypeDB({
    @JsonKey(name:'cat_id') required String catid,
    required String catName,
    required String catDescription,
    required String descriptionAsPartner, // ㅍㅏ트너일 때 설명
    required String catImage,
    required String titleDescription,
    required double titleDescriptionSize,
    required String exampleScenario,
    required String worstPartnerID,
    required String bestPartnerID,
  }) = _ResultCatTypeDB;

  factory ResultCatTypeDB.fromJson(Map<String, dynamic> json) =>
      _$ResultCatTypeDBFromJson(json);
}
