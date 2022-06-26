import 'package:voskat/controller/board_repository.dart';
import 'package:voskat/view/user_state.dart';
import 'package:flutter/material.dart';

import 'package:voskat/controller/user_reposiroty.dart';

import 'package:voskat/view/user_event.dart';

class user_view_model with ChangeNotifier {
  final UserRepository _userRepository;

  var _state = UserState();

  UserState get state => _state;

  user_view_model(this._userRepository) {
    _getUser();
  }

  void onEvent(UserEvent event) {
    // freezed의 패턴 매칭 사용
    event.when(
      query: _getUser,
      insertUser: _insertUser,
      // update: _update,
      // delete: _delete,
    );
  }


  Future _getUser() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _userRepository.getUser();
      // ..sort((a, b) => -a.acid.compareTo(b.acid));

    _state = state.copyWith(
      isLoading: false,
      userDB: result,
    );
    notifyListeners();
  }

  Future _insertUser(String name, int birthYear, String gender) async {
    await _userRepository.addUser(name, birthYear, gender);
    await _getUser();
  }
}