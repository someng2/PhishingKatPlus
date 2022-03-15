// ignore_for_file: file_names
import 'package:voskat/model/simulation/scenario.dart';
import 'package:voskat/tempData/acitonData.dart';

Scenario scenario_A0a = Scenario(
  sid: 'A0-a',
  medium: '문자',
  phoneNumber: '1600-xxxx',
  type: '기관사칭',
  subtype: '대출사기',
  appActionSequence: [A0a, A1a_A0a],
  userActionSequence: [],
);

Scenario scenario_A0b = Scenario(
  sid: 'A0-b',
  medium: '문자',
  phoneNumber: '070-',
  type: '기관사칭',
  subtype: '결제사기',
  appActionSequence: [A0b],
  userActionSequence: [],
);

Scenario scenario_A0c = Scenario(
  sid: 'A0-c',
  medium: '문자',
  phoneNumber: '+31 517 78 91 75',
  type: '기관사칭',
  subtype: '택배사칭',
  appActionSequence: [A0c, A1a_A0c],
  userActionSequence: [],
);

List<Scenario> scenarioList = [scenario_A0a, scenario_A0c];
