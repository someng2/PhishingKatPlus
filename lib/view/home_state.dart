import 'package:voskat/model/simulation/appContentsDB.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voskat/model/user/userDB.dart';

part 'home_state.freezed.dart';

part 'home_state.g.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default([]) List<UserDB> userDB,
    @Default(false) bool isLoading,
  }) = _HomeState;

  factory HomeState.fromJson(Map<String, dynamic> json) => _$HomeStateFromJson(json);
}