import 'package:voskat/domain/model/contents.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contents_state.freezed.dart';
part 'contents_state.g.dart';

@freezed
class ContentsState with _$ContentsState {
  factory ContentsState({
    @Default([]) List<Contents> contents,
    @Default(false) bool isLoading,
  }) = _ContentsState;

  factory ContentsState.fromJson(Map<String, dynamic> json) => _$ContentsStateFromJson(json);
}