import 'package:voskat/domain/repository/board_repository.dart';
import 'package:voskat/presentation/home_event.dart';
import 'package:voskat/presentation/home_state.dart';
import 'package:flutter/material.dart';

class HomeViewModel with ChangeNotifier {
  final BoardRepository _repository;

  var _state = HomeState();

  HomeState get state => _state;

  HomeViewModel(this._repository) {
    // 처음에 데이터 가져옴
    _getPosts();
  }

  void onEvent(HomeEvent event) {
    // freezed의 패턴 매칭 사용
    event.when(
      query: _getPosts,
      insert: _insert,
      update: _update,
      delete: _delete,
    );
  }

  Future _delete(int id) async {
    await _repository.remove(id);
    await _getPosts();
  }

  Future _update(int id, String content) async {
    await _repository.update(id, content);
    await _getPosts();
  }

  Future _insert(String content) async {
    await _repository.add(content);
    await _getPosts();
  }

  Future _getPosts() async {
    // 로딩
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    // 데이터 가져옴
    final result = await _repository.getPosts()
      ..sort((a, b) => -a.id.compareTo(b.id));

    _state = state.copyWith(
      isLoading: false,
      posts: result,
    );
    notifyListeners();
  }
}