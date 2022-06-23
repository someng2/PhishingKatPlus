import 'package:voskat/controller/board_repository.dart';
import 'package:voskat/view/home_state.dart';
import 'package:flutter/material.dart';

class HomeViewModel with ChangeNotifier {
  final BoardRepository _repository;

  var _state = HomeState();

  HomeState get state => _state;

  HomeViewModel(this._repository) {
    _getPosts();
  }

  Future _getPosts() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _repository.getUser();
      // ..sort((a, b) => -a.acid.compareTo(b.acid));

    _state = state.copyWith(
      isLoading: false,
      userDB: result,
    );
    notifyListeners();
  }
}