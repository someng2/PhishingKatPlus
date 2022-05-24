class ScenarioType {
  String sid;
  String medal;
  String type; // 스미싱 유형(기관사칭 or 지인사칭)
  String icon_active;
  String icon_disactive;
  bool lock;
  int score; // 모의훈련 점수


  ScenarioType({
    required this.sid,
    required this.medal,
    required this.type,
    required this.icon_active,
    required this.icon_disactive,
    required this.lock,
    required this.score,
  });
}