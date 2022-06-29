// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pair_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PairState _$$_PairStateFromJson(Map<String, dynamic> json) => _$_PairState(
      pairDB: (json['pairDB'] as List<dynamic>?)
              ?.map((e) => PairDB.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PairStateToJson(_$_PairState instance) =>
    <String, dynamic>{
      'pairDB': instance.pairDB,
      'isLoading': instance.isLoading,
    };
