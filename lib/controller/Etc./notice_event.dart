import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_event.freezed.dart';

@freezed
abstract class NoticeEvent<T> with _$NoticeEvent<T> {
  const factory NoticeEvent.selectNotice() = SelectNotice;
  // const factory NoticeEvent.insertNotice(String name, int birthYear, String gender, String interest) = InsertUser;
// const factory HomeEvent.update(int id, String content) = Update;
// const factory HomeEvent.delete(int id) = Delete;
}
