import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.freezed.dart';

@freezed
abstract class UserEvent<T> with _$UserEvent<T> {
  const factory UserEvent.query() = Query;
  const factory UserEvent.insertUser(String phone_number, String token, String name, int birthYear, String gender, String interest) = InsertUser;
  // const factory UserEvent.queryUserToken(String token) = QueryUserToken;
  // const factory HomeEvent.delete(int id) = Delete;
}
