import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voskat/model/user/userDB.dart';

part 'user_state.freezed.dart';
part 'user_state.g.dart';

@freezed
class UserState with _$UserState {
  factory UserState({
    @Default([]) List<UserDB> userDB,
    @Default(false) bool isLoading,
  }) = _UserState;

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);
}
