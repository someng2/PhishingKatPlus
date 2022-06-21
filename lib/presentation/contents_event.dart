import 'package:freezed_annotation/freezed_annotation.dart';

part 'contents_event.freezed.dart';

@freezed
abstract class ContentsEvent<T> with _$ContentsEvent<T> {
  const factory ContentsEvent.query2() = Query;
  const factory ContentsEvent.insert2(
      String ac_id,
      String aid,
      String sid,
      int order,
      String c_type,
      String contents,
      int hasNextAction,
      DateTime reg_date,
      DateTime mod_date) = Insert;
  // const factory ContentsEvent.update(int id, String content) = Update;
  // const factory ContentsEvent.delete(int id) = Delete;

// const factory HomeEvent.
}
