import 'package:voskat/model/user/userDB.dart';

abstract class UserRepository{

  Future<List<UserDB>> getUser();
  Future addUser(String phone_number, String token, String name, int birthYear, String gender, String interest);
  // Future getUid(String token);
}