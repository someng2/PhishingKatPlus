// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeState _$$_HomeStateFromJson(Map<String, dynamic> json) => _$_HomeState(
      posts: (json['posts'] as List<dynamic>?)
              ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$_HomeStateToJson(_$_HomeState instance) =>
    <String, dynamic>{
      'posts': instance.posts,
      'isLoading': instance.isLoading,
    };
