// ignore_for_file: file_names

import 'package:voskat/model/simulation/userAction.dart';

import 'package:voskat/tempData/acitonData.dart';
import 'package:voskat/view/Simulation/SimulationResultPage.dart';

UserAction U1_a = UserAction(
    aid: 'U1-a',
    feedback: '출처가 불분명한 url 클릭 금지!',
    score: -30,
    nextAction: A1a_A0a.widget);

UserAction U2_a = UserAction(
    aid: 'U2-a',
    feedback: '개인정보 입력 하지마!',
    score: -20,
    nextAction: A2a_A0a.widget);

UserAction U3_a = UserAction(
  aid: 'U3-a',
  feedback:
      '당신이 설치한 OO 앱은 악성 앱이였어요..! 악성 앱 설치 시, 백신 프로그램을 설치해 악성 앱 검사를 받아야 해요!',
  score: 0,
  nextAction: SimulationResultPage(sid: ''),
);

// 백신 프로그램 광고배너 클릭
UserAction U2_b = UserAction(
    aid: 'U2-b',
    feedback: '백신 프로그램을 설치한 당신! 대단해요! :)',
    score: 20,
    nextAction: A2b_A0a);

UserAction U3_b = UserAction(
  aid: 'U3-b',
  feedback: 'U3_b 삭',
  score: 10,
  nextAction: SimulationResultPage(sid: ''),
);

// 백신 프로그램 - 악성 앱 삭제 안함
UserAction U3_c = UserAction(
  aid: 'U3-c',
  feedback: '백신 프로그램을 설치했는데.. 왜 악성 앱을 삭제 안하셨나욧 ㅠㅠ.. ',
  score: -10,
  nextAction: SimulationResultPage(sid: ''),
);

UserAction U1_c = UserAction(
  aid: 'U1-c',
  feedback: 'U1-c 피드백',
  score: 20,
  nextAction: SimulationResultPage(sid: ''),
);

UserAction U2_c = UserAction(
  aid: 'U2-c',
  feedback: 'U2-c 피드백',
  score: 10,
  nextAction: SimulationResultPage(sid: ''),
);

UserAction U2_d = UserAction(
  aid: 'U2-d',
  feedback: 'U2-d 피드백',
  score: -20,
  nextAction: SimulationResultPage(sid: ''),
);

UserAction U3_d = UserAction(
  aid: 'U3-d',
  feedback: 'U3-d 피드백',
  score: 10,
  nextAction: SimulationResultPage(sid: ''),
);

UserAction U3_e = UserAction(
  aid: 'U2-d',
  feedback: 'U2-d 피드백',
  score: 0,
  nextAction: SimulationResultPage(sid: ''),
);

UserAction U4_a = UserAction(
  aid: 'U4-a',
  feedback: 'U4-a 피드백',
  score: 5,
  nextAction: SimulationResultPage(sid: ''),
);

UserAction U4_b = UserAction(
  aid: 'U4-b',
  feedback: 'U4-b 피드백',
  score: 0,
  nextAction: SimulationResultPage(sid: ''),
);
