import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voskat/model/simulation/resultCatTypeDB.dart';

part 'catType_state.freezed.dart';
part 'catType_state.g.dart';

@freezed
class CatTypeState with _$CatTypeState {
  factory CatTypeState({
    @Default([]) List<ResultCatTypeDB> catTypeDB,
    @Default(false) bool isLoading,
  }) = _CatTypeState;

  factory CatTypeState.fromJson(Map<String, dynamic> json) =>
      _$CatTypeStateFromJson(json);
}