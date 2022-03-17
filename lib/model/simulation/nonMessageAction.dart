// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:voskat/model/simulation/scenario.dart';

class NonMessageAction {
  String aid;
  String sid;
  dynamic widget;

  NonMessageAction(
      {required this.sid, required this.aid, required this.widget});
}
