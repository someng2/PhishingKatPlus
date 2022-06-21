import 'package:voskat/domain/repository/appContents_repository.dart';
import 'package:voskat/presentation/contents_event.dart';
import 'package:voskat/presentation/contents_state.dart';
import 'package:flutter/material.dart';

class ContentsViewModel with ChangeNotifier {
  final AppContentsRepository _repository;

  var _state = ContentsState();

  ContentsState get state => _state;

  ContentsViewModel(this._repository) {
    // 처음에 데이터 가져옴
    _getContents();
  }

  void onEvent(ContentsEvent event) {
    // freezed의 패턴 매칭 사용
    event.when(
      query2: _getContents,
      insert2: _insert,
      // update: _update,
      // delete: _delete,
    );
  }

  // Future _delete(int id) async {
  //   await _repository.remove(id);
  //   await _getPosts();
  // }
  //
  // Future _update(int id, String content) async {
  //   await _repository.update(id, content);
  //   await _getPosts();
  // }

  Future _insert(
      String ac_id,
      String aid,
      String sid,
      int order,
      String c_type,
      String contents,
      int hasNextAction,
      DateTime reg_date,
      DateTime mod_date
      ) async {
    await _repository.add(ac_id, aid, sid, order, c_type, contents,
        hasNextAction, reg_date, mod_date);
    await _getContents();
  }


  Future _getContents() async {
    // 로딩
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    // 데이터 가져옴
    final result = await _repository.getContents()
      ..sort((a, b) => -a.ac_id.compareTo(b.ac_id));

    _state = state.copyWith(
      isLoading: false,
      contents: result,
    );
    notifyListeners();
  }
}
