import 'package:voskat/model/simulation/scenarioType.dart';

List<ScenarioType> scenarioTypeList = [
  Type_0,
  Type_1,
  Type_2
];

ScenarioType Type_0 = ScenarioType(
  sid: 'A0_a',
  medal: 'none',
  type: '대출',
  icon_active: 'image/Type/loanColor.png',
  icon_disactive: 'image/Type/loanBW.png',
  lock: true,
  score: 67,
);

ScenarioType Type_1 = ScenarioType(
  sid: 'A0_a',
  medal: 'none',
  type: '택배',
  icon_active: 'image/Type/deliveryColor.png',
  icon_disactive: 'image/Type/deliveryBW.png',
  lock: false,
  score: 0,
);

ScenarioType Type_2 = ScenarioType(
  sid: 'A0_a',
  medal: 'none',
  type: '게임',
  icon_active: 'image/Type/gameColor.png',
  icon_disactive: 'image/Type/gameBW.png',
  lock: false,
  score: 0,
);