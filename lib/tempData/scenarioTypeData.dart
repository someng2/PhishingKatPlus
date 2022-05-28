import 'package:voskat/model/simulation/scenarioType.dart';
import 'package:voskat/view/Simulation/SimulationPage.dart';

List<ScenarioType> scenarioTypeList = [
  Type_0,
  Type_1,
  Type_2,
  Type_3,
  Type_4,
  Type_5,
  Type_6,
  Type_7,
  Type_8,
  Type_9,
  Type_10,
  Type_11,
];

ScenarioType Type_0 = ScenarioType(
  sid: 'A0-a',
  aid: 'A0-a',
  medal: 3,
  subtype: '대출',
  icon_active: 'image/Type/loanColor.png',
  icon_disactive: 'image/Type/loanBW.png',
  lock: false,
  score: 67,
  widget: 'SimulationPage',
);

ScenarioType Type_1 = ScenarioType(
  sid: 'A0-a',
  aid: 'A0-c',
  medal: 0,
  subtype: '택배',
  icon_active: 'image/Type/deliveryColor.png',
  icon_disactive: 'image/Type/deliveryBW.png',
  lock: false,
  score: 0,
  widget: 'SimulationPage',
);

ScenarioType Type_2 = ScenarioType(
  sid: 'A0-a',
  aid: 'A0-a',
  medal: 2,
  subtype: '게임',
  icon_active: 'image/Type/gameColor.png',
  icon_disactive: 'image/Type/gameBW.png',
  lock: true,
  score: 0,
  widget: 'SimulationPage',
);

ScenarioType Type_3 = ScenarioType(
  sid: 'A0-a',
  aid: 'A0-h',
  medal: 2,
  subtype: '가족',
  icon_active: 'image/Type/familyColor.png',
  icon_disactive: 'image/Type/familyBW.png',
  lock: false,
  score: 0,
  widget: 'FamilyPage',
);

ScenarioType Type_4 = ScenarioType(
  sid: 'A0-a',
  aid: 'A0-h',
  medal: 1,
  subtype: '아르바이트',
  icon_active: 'image/Type/parttimeColor.png',
  icon_disactive: 'image/Type/parttimeBW.png',
  lock: true,
  score: 0,
  widget: 'SimulationPage',
);

ScenarioType Type_5 = ScenarioType(
  sid: 'A0-a',
  aid: 'A0-h',
  medal: 1,
  subtype: '쇼핑',
  icon_active: 'image/Type/shoppingColor.png',
  icon_disactive: 'image/Type/shoppingBW.png',
  lock: true,
  score: 0,
  widget: 'SimulationPage',
);

ScenarioType Type_6 = ScenarioType(
  sid: 'A0-a',
  aid: 'A0-h',
  medal: 1,
  subtype: '주식',
  icon_active: 'image/Type/stockgColor.png',
  icon_disactive: 'image/Type/stockBW.png',
  lock: true,
  score: 0,
  widget: 'SimulationPage',
);

ScenarioType Type_7 = ScenarioType(
  sid: 'A0-a',
  aid: 'A0-h',
  medal: 1,
  subtype: '보험',
  icon_active: 'image/Type/insuranceColor.png',
  icon_disactive: 'image/Type/insuranceBW.png',
  lock: true,
  score: 0,
  widget: 'SimulationPage',
);

ScenarioType Type_8 = ScenarioType(
  sid: 'A0-a',
  aid: 'A0-h',
  medal: 1,
  subtype: '취업',
  icon_active: 'image/Type/employmentColor.png',
  icon_disactive: 'image/Type/employmentBW.png',
  lock: true,
  score: 0,
  widget: 'SimulationPage',
);

ScenarioType Type_9 = ScenarioType(
  sid: 'A0-a',
  aid: 'A0-h',
  medal: 1,
  subtype: '이성교제',
  icon_active: 'image/Type/datingColor.png',
  icon_disactive: 'image/Type/datingBW.png',
  lock: true,
  score: 0,
  widget: 'SimulationPage',
);

ScenarioType Type_10 = ScenarioType(
  sid: 'A0-a',
  aid: 'A0-h',
  medal: 1,
  subtype: '중고거래',
  icon_active: 'image/Type/tradeColor.png',
  icon_disactive: 'image/Type/tradeBW.png',
  lock: true,
  score: 0,
  widget: 'SimulationPage',
);

ScenarioType Type_11 = ScenarioType(
  sid: 'A0-a',
  aid: 'A0-h',
  medal: 1,
  subtype: '지원금',
  icon_active: 'image/Type/grantColor.png',
  icon_disactive: 'image/Type/grantBW.png',
  lock: true,
  score: 0,
  widget: 'SimulationPage',
);