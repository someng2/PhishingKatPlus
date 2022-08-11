import 'package:PhishingKatPlus/model/simulation/type&age.dart';

class User {
  int uid;
  String name; // or nickname
  int age;
  TypeNAge typeNage;


  User(
      {required this.uid,
      required this.name,
      required this.age,
      required this.typeNage});
}
