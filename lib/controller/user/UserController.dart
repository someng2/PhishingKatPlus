// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PhishingKatPlus/controller/user/user_repository.dart';
import 'package:PhishingKatPlus/model/user/user.dart';

import 'package:PhishingKatPlus/model/user/userDB.dart';
import 'package:PhishingKatPlus/controller/user/user_state.dart';
import 'dart:async';

class UserController {
  var _state = UserState();

  UserState get state => _state;
  // late Future<List<UserDB>> userDB;
  // late Future<UserDB> userDBList;

  getUserName(List<UserDB> userDB, int uid) {
    for (int i = 0; i < userDB.length; i++) {
      if (uid == userDB[i].uid) {
        return userDB[i].name;
      }
    }
  }

  getUserId(List<UserDB> userDB, String token) {
    int result = 0;
    print('userDB.length: ${userDB.length}');

    for (int i = 0; i < userDB.length; i++) {
      // print('i = $i');
      if (token == userDB[i].token) {
        // print('[UserController - getUserId] token = $token');
        result = userDB[i].uid;
        return result;
      }
    }
    if (result == 0) {
      print('[ERROR] getUserId() Cannot find user id!!');
    }
  }

  getUser(List<UserDB> userDB, int uid) {
    bool found = false;
    for (int i = 0; i < userDB.length; i++) {
      // print('i = $i');
      if (uid == userDB[i].uid) {
        print('[UserController - getUser] uid = ${userDB[i].uid}');
        found = true;
        return userDB[i];
      }
    }
    if (!found) {
      print('[ERROR] getUserId() Cannot find user id!!');
    }
  }

  isCustomTestNull(List<UserDB> userDB, int uid) {
    bool found = false;
    for (int i = 0; i < userDB.length; i++) {
      // print('i = $i');
      if (uid == userDB[i].uid) {
        // print('[UserController - isCustomTestNull] uid = ${userDB[i].uid}');
        found = true;
        return (userDB[i].custom_test_result == null);
      }
    }
    if (!found) {
      print('[ERROR] isCustomTestNull() Cannot find user id!!');
    }
  }
}
