// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voskat/controller/user_reposiroty.dart';
import 'package:voskat/model/user/user.dart';

import '../model/user/userDB.dart';
import '../view/user_state.dart';

class UserController with ChangeNotifier {
  final UserRepository _userRepository;

  var _state = UserState();

  UserState get state => _state;
  late Future<List<UserDB>> userDB;

  UserController(this._userRepository) {
    userDB = _getUser();
  }


  Future<List<UserDB>> _getUser() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _userRepository.getUser();
    // ..sort((a, b) => -a.acid.compareTo(b.acid));

    _state = state.copyWith(
      isLoading: false,
      userDB: result,
    );
    notifyListeners();

    return _state.userDB;
  }
}