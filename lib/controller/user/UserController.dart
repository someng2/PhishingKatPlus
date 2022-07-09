// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voskat/controller/user/user_repository.dart';
import 'package:voskat/model/user/user.dart';

import 'package:voskat/model/user/userDB.dart';
import 'package:voskat/controller/user/user_state.dart';
import 'dart:async';

class UserController{

  var _state = UserState();

  UserState get state => _state;
  // late Future<List<UserDB>> userDB;
  // late Future<UserDB> userDBList;


  getUserName(List<UserDB> userDB, int uid){
    for(int i = 0; i< userDB.length; i++) {
      if (uid == userDB[i].uid) {
        return userDB[i].name;
      }
    }
  }


}