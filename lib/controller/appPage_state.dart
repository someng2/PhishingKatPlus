import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:PhishingKatPlus/model/simulation/appPageDB.dart';

part 'appPage_state.freezed.dart';
part 'appPage_state.g.dart';

@freezed
class AppPageState with _$AppPageState {
  factory AppPageState({
    @Default([]) List<AppPageDB> appPageDB,
    @Default(false) bool isLoading,
  }) = _AppPageState;

  factory AppPageState.fromJson(Map<String, dynamic> json) =>
      _$AppPageStateFromJson(json);
}