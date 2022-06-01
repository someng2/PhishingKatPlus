import 'package:voskat/model/simulation/type&age.dart';

class User {
  int uid;
  String name; // or nickname
  int age;
  TypeNAge typeNage;
  // TODO: 점수 기록 data

  User(
      {required this.uid,
      required this.name,
      required this.age,
      required this.typeNage});
}
