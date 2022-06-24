// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resultCatTypeDB.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResultCatTypeDB _$$_ResultCatTypeDBFromJson(Map<String, dynamic> json) =>
    _$_ResultCatTypeDB(
      catid: json['cat_id'] as String,
      catName: json['catName'] as String,
      catDescription: json['catDescription'] as String,
      catExtraDescription: json['catExtraDescription'] as String,
      catImage: json['catImage'] as String,
      titleDescription: json['titleDescription'] as String,
      titleDescriptionSize: (json['titleDescriptionSize'] as num).toDouble(),
      exampleScenario: json['exampleScenario'] as String,
      worstPartnerID: json['worstPartnerID'] as String,
      bestPartnerID: json['bestPartnerID'] as String,
    );

Map<String, dynamic> _$$_ResultCatTypeDBToJson(_$_ResultCatTypeDB instance) =>
    <String, dynamic>{
      'cat_id': instance.catid,
      'catName': instance.catName,
      'catDescription': instance.catDescription,
      'catExtraDescription': instance.catExtraDescription,
      'catImage': instance.catImage,
      'titleDescription': instance.titleDescription,
      'titleDescriptionSize': instance.titleDescriptionSize,
      'exampleScenario': instance.exampleScenario,
      'worstPartnerID': instance.worstPartnerID,
      'bestPartnerID': instance.bestPartnerID,
    };
