import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:PhishingKatPlus/model/simulation/pairDB.dart';

part 'pair_state.freezed.dart';
part 'pair_state.g.dart';

@freezed
class PairState with _$PairState {
  factory PairState({
    @Default([]) List<PairDB> pairDB,
    @Default(false) bool isLoading,
  }) = _PairState;

  factory PairState.fromJson(Map<String, dynamic> json) =>
      _$PairStateFromJson(json);
}