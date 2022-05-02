import 'package:voskat/model/simulation/userAction.dart';
import 'package:voskat/model/simulation/messageAction.dart';

class Scenario {
  String sid;
  String medium; // 스미싱 수단(문자 or 카카오톡)
  String phoneNumber;
  String type; // 스미싱 유형(기관사칭 or 지인사칭)
  String subtype; // 스미싱 세부 유형
  int score; // 모의훈련 점수
  List<dynamic> appActionSequence;
  List<UserAction> userActionSequence;
  int pairLength;
  int pairIndex;

  Scenario({
    required this.sid,
    required this.medium,
    required this.phoneNumber,
    required this.type,
    required this.subtype,
    required this.score,
    required this.appActionSequence,
    required this.userActionSequence,
    required this.pairLength,
    required this.pairIndex
  });
}
