import 'package:voskat/model/simulation/type&age.dart';

class User {
  int uid;
  String id;
  String name; // or nickname
  String pwd; // password
  String ageGroup; // 연령대
  TypeNAge typeNage;
  // TODO: 점수 기록 data

  User(
      {required this.uid,
      required this.id,
      required this.name,
      required this.pwd,
      required this.ageGroup,
      required this.typeNage});
}
