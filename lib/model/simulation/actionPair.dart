// ignore_for_file: file_names

import 'package:voskat/model/simulation/userAction.dart';
import 'package:voskat/model/simulation/messageAction.dart';
import 'package:voskat/model/simulation/nonMessageAction.dart';

class ActionPair {
  String sid;
  int pairIndex;
  UserAction userAction;
  dynamic appAction;

  ActionPair(
      {required this.sid,
      required this.pairIndex,
      required this.userAction,
      required this.appAction});
}
