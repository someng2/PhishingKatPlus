import 'package:provider/provider.dart';
import 'package:PhishingKatPlus/controller/user/user_state.dart';
import 'package:flutter/material.dart';

import 'package:PhishingKatPlus/controller/user/user_repository.dart';

import 'package:PhishingKatPlus/controller/user/user_event.dart';

import '../../controller/user/user_api.dart';
import '../../controller/user/user_repository_impl.dart';

class UserViewModel with ChangeNotifier {
  final UserRepository _userRepository;

  var _state = UserState();

  UserState get state => _state;

  UserViewModel(this._userRepository) {
    _getUser();
  }

  void onEvent(UserEvent event) {
    // freezed의 패턴 매칭 사용
    event.when(
      query: _getUser,
      insertUser: _insertUser,
      updateCustomTestResult: _updateCustomTestResult,
      // update: _update,
      // delete: _delete,
    );
  }

  Future _getUser() async {
    print('_getUser()');

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

  Future _insertUser(String phone_number, String token, String name,
      int birthYear, String gender, String interest) async {
    await _userRepository.addUser(
        phone_number, token, name, birthYear, gender, interest);
    await _getUser();
  }

  Future _updateCustomTestResult(int uid, String custom_test_result) async {
    await _userRepository.updateCustomTestResult(uid, custom_test_result);
    await _getUser();
  }
}
