import 'dart:convert';

import 'package:voskat/controller/user/user_api.dart';
import 'package:voskat/controller/user/user_repository.dart';

import '../../model/user/userDB.dart';

class UserRepositoryImpl implements UserRepository {
  UserApi api;

  UserRepositoryImpl(this.api);

  @override
  Future<List<UserDB>> getUser() async {
    final response = await api.getAllUser();
    final Iterable json = jsonDecode(response.body);
    return json.map((e) => UserDB.fromJson(e)).toList();
  }

  @override
  Future addUser(String phone_number, String token, String name, int birthYear,
      String gender, String interest) async {
    await api.insertUser(
        phone_number, token, name, birthYear, gender, interest);
  }

  // @override
  // Future getUid(String token) async {
  //   await api.getUid(token);
  // }

}
