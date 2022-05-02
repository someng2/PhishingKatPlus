// ignore_for_file: file_names
import 'package:voskat/model/simulation/messageAction.dart';
import 'package:voskat/model/simulation/nonMessageAction.dart';

class UserAction {
  String aid;
  // String type;
  String feedback;
  int score;
  dynamic nextAction;

  UserAction(
      {required this.aid,
      required this.feedback,
      required this.score,
      required this.nextAction});
}
