// ignore_for_file: file_names

class ScenarioType {
  String sid;
  String aid;
  String subtype; // 스미싱 유형(기관사칭 or 지인사칭)
  String icon_active;
  String icon_disactive;
  bool lock;
  int score; // 모의훈련 점수
  int medal;
  String widget;


  ScenarioType({
    required this.sid,
    required this.aid,
    required this.medal,
    required this.subtype,
    required this.icon_active,
    required this.icon_disactive,
    required this.lock,
    required this.score,
    required this.widget,
  });
}