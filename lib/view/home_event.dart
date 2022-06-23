import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@freezed
abstract class HomeEvent<T> with _$HomeEvent<T> {
  const factory HomeEvent.query() = Query;
  const factory HomeEvent.insert(String content) = Insert;
  // const factory HomeEvent.update(int id, String content) = Update;
  // const factory HomeEvent.delete(int id) = Delete;
}
