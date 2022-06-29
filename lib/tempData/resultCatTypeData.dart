// ignore_for_file: file_names
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voskat/model/simulation/resultCatType.dart';

ResultCatType resultCatType1 = ResultCatType(
    cat_id: 'cat_1',
    catName: '봄베이',
    catDescription: '사랑한다면 모두 퍼주는 당신',
    descriptionAsPartner: '거절은 거절한다! 무조건 퍼주는,',
    catImage: 'image/CatType/Bombay.png',
    titleDescription: '슬프지만 당신의 성향상 인생의\n대부분 상황을 조심해야 해요.',
    titleDescriptionSize: 19.sp,
    catDescriptionList: [
      '좋아하는 사람이라면 묻지도 따지지도 않고 퍼주는 때 묻지 않은 순수한 영혼이라 피싱 당 할 확률이 아주 높아요.',
      '무언가를 부탁받으면 절대 혼자 판단하지 않는 게 좋아요.',
      '천리길도 한 걸음부터. 매사에 경계하는 습관을 들이다보면 이런 작은 습관이 큰 결과를 가 져올 거에요.'
    ],
    exampleScenario: 'image/CatType/Bombay_ex.png',
    worstPartnerID: 'cat_4',    // 랙돌
    bestPartnerID: 'cat_8'    // 엑조틱
);

ResultCatType resultCatType2 = ResultCatType(
    cat_id: 'cat_2',
    catName: '러시안 블루',
    catDescription: '가까운 사이엔 아낌없는 나무인 당신',
    descriptionAsPartner: '아낌없이 퍼주는,',
    catImage: 'image/CatType/RussianBlue.png',
    titleDescription: '친하다는 이유로 무리한 요구를 들어주고 있지 않은지 돌이켜봐요.',
    titleDescriptionSize: 19.sp,
    catDescriptionList: [
      '일상에서 겪는 크고 작은 부당함을 인식하려 노력하는 편이지만 타고난 정이 많은 타입이라 자신도 모르는 새 가까운 친구들에게 아낌없이 주는\n나무가 되거나, 당하고도 모른 채 지나가 기도 해요.',
      '본인이 야무진 편이라는 자부심을 내려놓고 주변에 인심을 과하게 베푸는 편은 아닌지 냉정하게 돌이켜보아요.',
      '아는 사이끼리 의심해야 하나? 생각하지 말고 아끼는 지인과의 약속도 기록을 남기는 습관 부터 들어요.',
    ],
    exampleScenario: 'image/CatType/RussianBlue_ex.png',
    worstPartnerID: 'cat_5',
    bestPartnerID: 'cat_6');

ResultCatType resultCatType3 = ResultCatType(
    cat_id: 'cat_3',
    catName: '메인쿤',
    catDescription: '의외의 상술에 쉽게 현혹되는 당신',
    descriptionAsPartner: '공과 사 구분 칼같은',
    catImage: 'image/CatType/MaineCoon.png',
    titleDescription: '공과 사 구분이 확실하지만 의외로 허술한 포인트에서 통 크게 당하고 다니는 게 함정이에요.',
    titleDescriptionSize: 19.sp,
    catDescriptionList: [
      '메인쿤처럼 사교적이고 공감능력이 좋아서 은근히 사람이 따르는 타입이에요.',
      '인간관계를 중요시하기 때문에 오히려 "친구(가족)끼리는 돈 거래하는 거 아니야~"처럼 칼같은 멘트를 자주 합니다.',
      '그런데 막상 돈 관련해서는 실속 없는 경우가 많으니 1+1과 같은 상술에 유의하세요.',
      '금전 문제에서, 지인들에게만 칼 같이 구분하지 말고 타인들에게도 필요하다면 각종 증거나 문서를 요구해야 해요.'
    ],
    exampleScenario: 'image/CatType/MaineCoon_ex.png',
    worstPartnerID: 'cat_6',
    bestPartnerID: 'cat_5');

ResultCatType resultCatType4 = ResultCatType(
    cat_id: 'cat_4',
    catName: '랙돌',
    catDescription: '귀가 얇아 슬픈 당신',
    descriptionAsPartner: '습자지 수준의 팔랑귀,',
    catImage: 'image/CatType/Ragdoll.png',
    titleDescription: '늘 근거를 확인하고 모든 행동에\n발자취를 남기는 것만이 살 길이에요.',
    titleDescriptionSize: 16.sp,
    catDescriptionList: [
      '머릿속으로는 \'호구 당하지 말아야지!\'백번 다짐하지만 귀 얇기가 습자지 수준이라손해 보고 사는 타입',
      '랙돌처럼 느긋하고 타인에게 친밀감을 쉽게 느끼는 당신은 남 말이면 맹신에 가까워서 피싱에 아주 취약해요.늘 근거를 확인하고 모든 행동에 발자취를 남기는 것만이 피싱을 피할 수 있어요.',
    ],
    exampleScenario: 'image/CatType/Ragdoll_ex.png',
    worstPartnerID: 'cat_1',
    bestPartnerID: 'cat_8');

ResultCatType resultCatType5 = ResultCatType(
    cat_id: 'cat_5',
    catName: '코리안 숏헤어',
    catDescription: '오지랖의 화신인 당신',
    descriptionAsPartner: '민중의 지팡이 오지라퍼',
    catImage: 'image/CatType/KoreanShorthair.png',
    titleDescription: '헌신하다 헌신짝이 될 수 있으니 가까운 사이라도 가끔은 정확히 선 긋는 사람이 되어요.',
    titleDescriptionSize: 19.sp,
    catDescriptionList: [
      '차가운 심장을 가졌지만 내 친구에게만은 따뜻한 타입.',
      '낯가림있는 코리안 숏헤어답게 친해지는데 오래 걸리더라도 내 사람에게는 수다쟁이로 변 신! 내 사람들이 당하고 다닐까봐 민중의 지팡이마냥 착한 오지랖을 시전하기도..',
      '사랑하는 사람과 결혼할 때도 문서로 혼인신고를 하듯, 지키고 싶은 관계일수록 문서나 계 약을 남겨요 :)',
    ],
    exampleScenario: 'image/CatType/KoreanShorthair_ex.png',
    worstPartnerID: 'cat_2',
    bestPartnerID: 'cat_3');

ResultCatType resultCatType6 = ResultCatType(
    cat_id: 'cat_6',
    catName: '샴',
    catDescription: '만사 귀찮아서 대충 살고 싶은 당신',
    descriptionAsPartner: '친할수록 선을 지키는',
    catImage: 'image/CatType/Siamese.png',
    titleDescription:'당장은 편할지 몰라도, 티끌같은 귀차니즘 습관이 모여 태산같은 실수를 만드는 법이에요.',
    titleDescriptionSize: 19.sp,
    catDescriptionList: [
      '나만의 원리원칙을 중요시해서 겉으로 보기엔 완벽주의자 타입.',
      '특히 가까운 친구(가족)일수록 지켜야 할 선이 있다고 생각하므로 본인이 나서서 규칙을 정 해주기도 함.',
      '대신 밖에서 돈 쓸 때는 큰돈 아니면 귀찮아서 알면서도 손해 보고 말아버리는 경우가 부 지기수. "얼마 차이 안 나는데 뭐~" 같은 대사를 자주 시전함.',
    ],
    exampleScenario: 'image/CatType/Siamese_ex.png',

    worstPartnerID: 'cat_3',
    bestPartnerID: 'cat_2');

ResultCatType resultCatType7 = ResultCatType(
    cat_id: 'cat_7',
    catName: '스코티쉬폴드',
    catDescription: '눈치만렙, 외유내강인 당신',
    descriptionAsPartner: '',
    catImage: 'image/CatType/ScottishFold.png',
    titleDescription: '증거 수집하는 당신의 노력을\n후려치는 지인이 최대 장애물이에요.',
    titleDescriptionSize: 19.sp,
    catDescriptionList: [
      '주로 외유내강 스타일로 무던하고 주변에 적을 두지 않는 성격이지만 은근히 만렙 직장인급',
      '스코티쉬폴드처럼 귀엽고 서글서글한 인상이라 호구 당할 위기에 자주 처하는데 그럴 때마 다 야무지게 곧잘 피하고 차단하는 편.',
      '항상 안테나를 세우고 사느라 스스로도 \'아..피곤하게 산다\'고 생각하는 편.',
    ],
    exampleScenario: 'image/CatType/ScottishFold_ex.png',
    worstPartnerID: 'cat_1',
    bestPartnerID: 'cat_8');


ResultCatType resultCatType8 = ResultCatType(
    cat_id: 'cat_8',
    catName: '엑죠틱',
    catDescription: '단호박 그 자체인 당신',
    descriptionAsPartner: '함께하면 최강 단호박 그 자체,',
    catImage: 'image/CatType/Exotic.png',
    titleDescription: '당신은 도대체... (말잇못)\n세상이 당신을 조심하면 된다.',
    titleDescriptionSize: 19.sp,
    catDescriptionList: [
      '환불원정대 1열 선봉장 쌉가능. 정의감과 이성으로 똘똘 뭉친 행동파.',
      '불합리하다고 여겨지는 일은 그 자리에서 말하고 어떻게 해결되는지 내 눈으로 확인해야 적 성이 풀림.',
      '인간 심리에 훤해서 중고로운 평화나라 사기꾼도 참교육 시켜줄 수 있는 경지에 다다름.',
      '이미 호구와는 거리가 먼 삶을 살아온 당신, 하지만 원숭이도 나무에서 떨어지는 법! 지능 화되는 최신 피싱 수법에만 잘 숙지해도 피싱은 먼나라 얘기~'
    ],
    exampleScenario: 'image/CatType/Exotic_ex.png',
    worstPartnerID: '',
    bestPartnerID: '');



///
List<ResultCatType> resultCatList = [
  resultCatType1,
  resultCatType2,
  resultCatType3,
  resultCatType4,
  resultCatType5,
  resultCatType6,
  resultCatType7,
  resultCatType8,
];
