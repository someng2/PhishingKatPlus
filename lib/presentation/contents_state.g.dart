// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contents_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContentsState _$$_ContentsStateFromJson(Map<String, dynamic> json) =>
    _$_ContentsState(
      contents: (json['contents'] as List<dynamic>?)
              ?.map((e) => Contents.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ContentsStateToJson(_$_ContentsState instance) =>
    <String, dynamic>{
      'contents': instance.contents,
      'isLoading': instance.isLoading,
    };
