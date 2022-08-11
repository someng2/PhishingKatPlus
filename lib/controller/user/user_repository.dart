import 'package:PhishingKatPlus/model/user/userDB.dart';

abstract class UserRepository{

  Future<List<UserDB>> getUser();
  Future addUser(String phone_number, String token, String name, int birthYear, String gender, String interest);
  Future updateCustomTestResult(int uid, String custom_test_result);
}