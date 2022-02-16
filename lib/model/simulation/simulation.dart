import 'package:voskat/model/simulation/messageAction.dart';

class Simulation {
  String medium; // 스미싱 수단
  String phoneNumber;
  String type; // 스미싱 유형
  String subtype; // 스미싱 세부 유형
  List<dynamic> actionSequence;
  int score; // 시뮬레이션 점수

  Simulation(
      {required this.medium,
      required this.phoneNumber,
      required this.type,
      required this.subtype,
      required this.actionSequence,
      required this.score});
}
