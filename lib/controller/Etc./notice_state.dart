import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:PhishingKatPlus/model/Etc./noticeDB.dart';

part 'notice_state.freezed.dart';
part 'notice_state.g.dart';

@freezed
class NoticeState with _$NoticeState {
  factory NoticeState({
    @Default([]) List<NoticeDB> noticeDB,
    @Default(false) bool isLoading,
  }) = _NoticeState;

  factory NoticeState.fromJson(Map<String, dynamic> json) =>
      _$NoticeStateFromJson(json);
}
