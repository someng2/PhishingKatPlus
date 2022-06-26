import 'dart:convert';

import 'package:voskat/controller/user_api.dart';
import 'package:voskat/controller/user_reposiroty.dart';

import '../model/user/userDB.dart';

class UserRepositoryImpl implements UserRepository {
  UserApi api;

  UserRepositoryImpl(this.api);

  @override
  Future<List<UserDB>> getUser() async{
    final response = await api.getAllUser();
    final Iterable json = jsonDecode(response.body);
    return json.map((e) => UserDB.fromJson(e)).toList();
  }

  @override
  Future addUser(String name, int birthYear, String gender) async {
    await api.insertUser(name, birthYear, gender);
  }

}