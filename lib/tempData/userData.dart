// ignore_for_file: file_names

import 'package:voskat/model/user/user.dart';
import 'package:voskat/tempData/type&ageData.dart';

User user1 = User(
    uid: 0,
    name: '20대남',
    age: 25,
    typeNage: Type20s);

User user2 = User(
  uid: 1,
  name: '50대남',
  age: 52,
  typeNage: Type50s,
);

List<User> userList = [user1, user2];
