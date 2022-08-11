import 'package:PhishingKatPlus/model/simulation/appContentsDB.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appContents_state.freezed.dart';
part 'appContents_state.g.dart';

@freezed
class AppContentsState with _$AppContentsState {
  factory AppContentsState({
    @Default([]) List<AppContentsDB> appContentsDB,
    @Default(false) bool isLoading,
  }) = _AppContentsState;

  factory AppContentsState.fromJson(Map<String, dynamic> json) =>
      _$AppContentsStateFromJson(json);
}