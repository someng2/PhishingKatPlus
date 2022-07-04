import 'package:provider/provider.dart';
import 'package:voskat/controller/user/user_state.dart';
import 'package:flutter/material.dart';

import 'package:voskat/controller/user/user_reposiroty.dart';

import 'package:voskat/controller/user/user_event.dart';

import '../../controller/user/user_api.dart';
import '../../controller/user/user_repository_impl.dart';


class UserViewModel with ChangeNotifier {
  final UserRepository _userRepository;

  var _state = UserState();

  UserState get state => _state;

  UserViewModel(this._userRepository) {
    // removeListener2();
    _getUser();
  }

  void onEvent(UserEvent event) {
    // freezed의 패턴 매칭 사용
    event.when(
      query: _getUser,
      // _getUser,
      insertUser: _insertUser,
      // update: _update,
      // delete: _delete,
    );
  }

  removeListener2() {

    UserViewModel(UserRepositoryImpl(UserApi())).removeListener(() {
    });

    ChangeNotifierProvider<UserViewModel>(
      create: (context) => UserViewModel(UserRepositoryImpl(UserApi())),
      // lazy: true,
    );
  }


  Future _getUser() async {

    // UserViewModel(UserRepositoryImpl(UserApi())).removeListener(() {
    // });
    //
    // ChangeNotifierProvider<UserViewModel>(
    //     create: (context) => UserViewModel(UserRepositoryImpl(UserApi())),
    //     // lazy: true,
    // );

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

  Future _insertUser(String name, int birthYear, String gender, String interest) async {
    await _userRepository.addUser(name, birthYear, gender, interest);
    await _getUser();
  }
}