// ignore_for_file: file_names

import 'package:voskat/model/simulation/userAction.dart';

import 'package:voskat/view/Simulation/SimulationResultPage.dart';

List<UserAction> userActionList = [
  U1_a,
  U2_a,
  U2_b,
  U2_c,
  U2_d,
  U3_a,
  U3_b,
  U3_c,
  U3_d,
  U3_e,
  U4_a,
  U4_b
];

UserAction U1_a = UserAction(
  ua_id: 'U1-a',
  feedback: '출처가 불분명한 url 클릭 금지!',
  score: -30,
  // nextAction: A1a_A0a.widget
);

UserAction U2_a = UserAction(
  ua_id: 'U2-a',
  feedback: '개인정보 입력 하지마!',
  score: -20,
  // nextAction: A2a_A0a.widget
);

UserAction U3_a = UserAction(
  ua_id: 'U3-a',
  feedback:
      '당신이 설치한 OO 앱은 악성 앱이였어요..! 악성 앱 설치 시, 백신 프로그램을 설치해 악성 앱 검사를 받아야 해요!',
  score: 0,
  // nextAction: SimulationResultPage(sid: ''),
);

// 백신 프로그램 광고배너 클릭
UserAction U2_b = UserAction(
  ua_id: 'U2-b',
  feedback: '백신 프로그램을 설치한 당신! 대단해요! :)',
  score: 20,
  // nextAction: A2b_A0a,
);

UserAction U3_b = UserAction(
  ua_id: 'U3-b',
  feedback: 'U3_b 피드백 ',
  score: 10,
  // nextAction: SimulationResultPage(sid: ''),
);

// 백신 프로그램 - 악성 앱 삭제 안함
UserAction U3_c = UserAction(
  ua_id: 'U3-c',
  feedback: '백신 프로그램을 설치했는데.. 왜 악성 앱을 삭제 안하셨나욧 ㅠㅠ.. ',
  score: -10,
  // nextAction: SimulationResultPage(sid: ''),
);

UserAction U1_c = UserAction(
  ua_id: 'U1-c',
  feedback: '문자 수신차단 시도..',
  score: 20,
  // nextAction: SimulationResultPage(sid: ''),
);

UserAction U2_c = UserAction(
  ua_id: 'U2-c',
  feedback: ' ㄴ 이상한 문자는 역시 차단해야죠!',
  score: 10,
  // nextAction: SimulationResultPage(sid: ''),
);

UserAction U2_d = UserAction(
  ua_id: 'U2-d',
  feedback: ' ㄴ 아니 시도해놓고 왜 취소하셨어요?',
  score: -20,
  // nextAction: SimulationResultPage(sid: ''),
);

UserAction U3_d = UserAction(
  ua_id: 'U3-d',
  feedback: '차단 후엔 신고까지!',
  score: 10,
  // nextAction: SimulationResultPage(sid: ''),
);

UserAction U3_e = UserAction(
  ua_id: 'U3-e',
  feedback: '신고를 통해 2차 피해를 줄입시다!',
  score: 0,
  // nextAction: SimulationResultPage(sid: ''),
);

UserAction U4_a = UserAction(
  ua_id: 'U4-a',
  feedback: '나중에 클릭할 가능성까지 제거하는 꼼꼼',
  score: 5,
  // nextAction: SimulationResultPage(sid: ''),
);

UserAction U4_b = UserAction(
  ua_id: 'U4-b',
  feedback: '남겨놓고 다시보자!',
  score: 0,
  // nextAction: SimulationResultPage(sid: ''),
);
