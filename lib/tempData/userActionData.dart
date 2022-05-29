// ignore_for_file: file_names

import 'package:voskat/model/simulation/userAction.dart';

import 'package:voskat/view/Simulation/SimulationResultPage.dart';


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
);

// 백신 프로그램 - 악성 앱 삭제 안함
UserAction U3_c = UserAction(
  ua_id: 'U3-c',
  feedback: '백신 프로그램을 설치했는데.. 왜 악성 앱을 삭제 안하셨나욧 ㅠㅠ.. ',
  score: -10,
);

UserAction U1_c = UserAction(
  ua_id: 'U1-c',
  feedback: '문자 수신차단 시도..',
  score: 20,
);

UserAction U2_c = UserAction(
  ua_id: 'U2-c',
  feedback: ' ㄴ 이상한 문자는 역시 차단해야죠!',
  score: 10,
);

UserAction U2_d = UserAction(
  ua_id: 'U2-d',
  feedback: ' ㄴ 아니 시도해놓고 왜 취소하셨어요?',
  score: -20,
);

UserAction U3_d = UserAction(
  ua_id: 'U3-d',
  feedback: '차단 후엔 신고까지!',
  score: 10,
);

UserAction U3_e = UserAction(
  ua_id: 'U3-e',
  feedback: '신고를 통해 2차 피해를 줄입시다!',
  score: 0,
);

UserAction U4_a = UserAction(
  ua_id: 'U4-a',
  feedback: '나중에 클릭할 가능성까지 제거하는 꼼꼼함',
  score: 5,
);

UserAction U4_b = UserAction(
  ua_id: 'U4-b',
  feedback: '남겨놓고 다시보자!',
  score: 0,
);



// 자녀 사칭
UserAction U2_i = UserAction(
  ua_id: 'U2-i',
  feedback: '어떻게 신청하는데?',
  score: 5,
  // nextAction: SimulationResultPage(sid: ''),
);
UserAction U2_j = UserAction(
  ua_id: 'U2-j',
  feedback: '응 전화로 방법 알려줘~',
  score: 10,
  // nextAction: SimulationResultPage(sid: ''),
);
UserAction U3_g = UserAction(
  ua_id: 'U3-g',
  feedback: '(url 클릭)',
  score: -10,
  // nextAction: SimulationResultPage(sid: ''),
);
UserAction U3_h = UserAction(
  ua_id: 'U3-h',
  feedback: '알겠어~ 근데 아들 곧 생일이지?\n받고 싶은 선물 있어?',
  score: 5,
  // nextAction: SimulationResultPage(sid: ''),
);
UserAction U3_i = UserAction(
  ua_id: 'U3-i',
  feedback: '그래 알겠어~',
  score: -5,
  // nextAction: SimulationResultPage(sid: ''),
);
UserAction U3_j = UserAction(
  ua_id: 'U3-j',
  feedback: '휴대폰 빌려서 전화줘~',
  score: 15,
  // nextAction: SimulationResultPage(sid: ''),
);
UserAction U4_e = UserAction(
  ua_id: 'U4-e',
  feedback: 'xxx-xxx-xxx\n(인증번호 전송)',
  score: -10,
  // nextAction: SimulationResultPage(sid: ''),
);
UserAction U4_f = UserAction(
  ua_id: 'U4-f',
  feedback: '근데 아들 곧 생일이지?\n받고 싶은 선물 있어?',
  score: 10,
  // nextAction: SimulationResultPage(sid: ''),
);
UserAction U4_g = UserAction(
  ua_id: 'U4-g',
  feedback: '알려주면 보내줄게~',
  score: 5,
  // nextAction: SimulationResultPage(sid: ''),
);
UserAction U4_h = UserAction(
  ua_id: 'U4-h',
  feedback: '알겠어~\n(url 클릭)',
  score: -5,
  // nextAction: SimulationResultPage(sid: ''),
);
UserAction U5_a = UserAction(
  ua_id: 'U5-a',
  feedback: '우리 아들 생일 지난주였다.. 😠',
  score: 20,
  // nextAction: SimulationResultPage(sid: ''),
);
UserAction U5_b = UserAction(
  ua_id: 'U5-b',
  feedback: '그래 이따 봐~',
  score: -20,
  // nextAction: SimulationResultPage(sid: ''),
);
UserAction U5_c = UserAction(
  ua_id: 'U5-c',
  feedback: 'xxx-xxx-xxx\n(인증번호 전송)',
  score: -10,
  // nextAction: SimulationResultPage(sid: ''),
);
UserAction U5_d = UserAction(
  ua_id: 'U5-d',
  feedback: '전송하는 척 꺼버린다',
  score: 10,
  // nextAction: SimulationResultPage(sid: ''),
);

UserAction U1_b =
    UserAction(ua_id: 'U1-b', feedback: 'U1-b feedback', score: -30);

UserAction U1_f =
    UserAction(ua_id: 'U1-f', feedback: 'U1-f feedback', score: 20);

UserAction U2_e =
    UserAction(ua_id: 'U2-e', feedback: 'U2-e feedback', score: -15);

UserAction U3_f =
    UserAction(ua_id: 'U3-f', feedback: 'U3-f feedback', score: 0);

UserAction U4_c =
    UserAction(ua_id: 'U4-c', feedback: 'U4-c feedback', score: 0);

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
  U4_b,

  U1_b,
  U1_f,
  U2_e,
  U3_f,
  U4_c,
  
  U1_c,

  U2_i,
  U2_j,
  U3_g,
  U3_h,
  U3_i,
  U3_j,
  U4_e,
  U4_f,
  U4_g,
  U4_h,
  U5_a,
  U5_b,
  U5_c,
  U5_d,

];

