import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:voskat/controller/Etc./notice_repository.dart';

import 'package:voskat/controller/Etc./notice_event.dart';
import 'package:voskat/controller/Etc./notice_state.dart';

class NoticeViewModel with ChangeNotifier {
  final NoticeRepository _noticeRepository;

  var _state = NoticeState();

  NoticeState get state => _state;

  NoticeViewModel(this._noticeRepository) {
    _getNotice();
  }

  void onEvent(NoticeEvent event) {
    // freezed의 패턴 매칭 사용
    event.when(
      selectNotice: _getNotice,
      // insertUser: _insertUser,
      // update: _update,
      // delete: _delete,
    );
  }

  Future _getNotice() async {
    print('_getNotice()');

    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _noticeRepository.getNotice()
    // 최신 공지사항 순으로 정렬
      ..sort((a, b) => -a.update_time.compareTo(b.update_time));

    _state = state.copyWith(
      isLoading: false,
      noticeDB: result,
    );
    notifyListeners();
  }

  // Future _insertUser(String name, int birthYear, String gender, String interest) async {
  //   await _userRepository.addUser(name, birthYear, gender, interest);
  //   await _getUser();
  // }
}
