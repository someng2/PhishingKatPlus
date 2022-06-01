// ignore_for_file: file_names
import 'package:voskat/model/simulation/scenario.dart';

Scenario scenario_A0a = Scenario(
  sid: 'A0-a',
  medium: '문자',
  phoneNumber: '1600-5410',
  type: '기관사칭',
  subtype: '대출',
  score: 50,
  userActionSequence: [],
);

Scenario scenario_A0b = Scenario(
  sid: 'A0-b',
  medium: '문자',
  phoneNumber: '070-',
  type: '기관사칭',
  subtype: '결제사기',
  score: 50,
  userActionSequence: [],
);

Scenario scenario_A0c = Scenario(
  sid: 'A0-c',
  medium: '문자',
  phoneNumber: '010-2965-1087',
  type: '기관사칭',
  subtype: '택배',
  score: 50,
  userActionSequence: [],
);


Scenario scenario_A0h = Scenario(
  sid: 'A0-h',
  medium: '문자',
  phoneNumber: '010-1234-5678',
  type: '지인사칭',
  subtype: '가족',
  score: 50,
  // appActionSequence: [A0c, A1a_A0c],
  userActionSequence: [],
  // pairLength: 0,
  // pairIndex: 0,
);

List<Scenario> scenarioList = [scenario_A0a, scenario_A0c, scenario_A0h,scenario_A0c];

