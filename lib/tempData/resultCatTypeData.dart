// ignore_for_file: file_names
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voskat/model/simulation/resultCatType.dart';

ResultCatType resultCatType1 = ResultCatType(
    catID: 'cat_1',
    under50Type: '귀가 얇아 슬픈 당신',
    over50Type: '다짐만은 100점인 당신',
    catName: '랙돌이',
    catDesciprion: '습자지 수준의 팔랑귀',
    catImage: 'image/CatType/랙돌.png',
    titleDescription:
        '\'당신이 잘 알고 있다는 사실을 내가 안다\'는 식의\n상술에 약하기 때문에\n대출이나 상품 판매 를 가장한 피싱에 유의해야 해요.',
    titleDescriptionSize: 16.sp,
    descriptionList: [
      '머릿속으로는 \'호구 당하지 말아야지!\' 백번 다짐하지만\n귀 얇기가 습자지 수준이라 손해 보고 사는 타입',
      '랙돌처럼 느긋하고 타인에게 친밀감을 쉽게 느끼는 당신은\n남 말이면 맹신에 가까워서 피싱 에 아주 취약해요.\n늘 근거를 확인하고 모든 행동에 발자취를 남기는 것만이\n피싱을 피할 수 있어요.',
    ],
    exampleScenario: 'image/CatType/랙돌_ex.png',
    worstPartnerID: 'cat_2',
    bestPartnerID: 'cat_3');

ResultCatType resultCatType2 = ResultCatType(
    catID: 'cat_2',
    under50Type: '사랑한다면 모두 퍼주는 당신',
    over50Type: '조금씩 노력 중인 당신',
    catName: '봄베이',
    catDesciprion: '무조건 퍼주는',
    catImage: 'image/CatType/봄베이.png',
    titleDescription:
        '당신에게 미안해하는 모든 사람을 일단 경계해요. 슬프지만 당신의 성향상 인생의 대부분 상 황을 조심해야 해요.',
    titleDescriptionSize: 19.sp,
    descriptionList: [
      '좋아하는 사람이라면 묻지도 따지지도 않고 퍼주는 때 묻지 않은 순수한 영혼이라 피싱 당 할 확률이 아주 높아요.',
      '무언가를 부탁받으면 절대 혼자 판단하지 않는 게 좋아요.',
      '천리길도 한 걸음부터. 매사에 경계하는 습관을 들이다보면 이런 작은 습관이 큰 결과를 가 져올 거에요.'
    ],
    exampleScenario: '',
    worstPartnerID: 'cat_1',
    bestPartnerID: 'cat_3');

ResultCatType resultCatType3 = ResultCatType(
    catID: 'cat_3',
    under50Type: '알려진 수법에만 빠삭한 당신',
    over50Type: '단호박 그 자체인 당신',
    catName: '엑죠틱',
    catDesciprion: '단호박 그 자체',
    catImage: 'image/CatType/엑죠틱.png',
    titleDescription: '당신은 도대체... (말잇못) 세상이 당신을 조심하면 된다.',
    titleDescriptionSize: 19.sp,
    descriptionList: [
      '환불원정대 1열 선봉장 쌉가능. 정의감과 이성으로 똘똘 뭉친 행동파.',
      '불합리하다고 여겨지는 일은 그 자리에서 말하고 어떻게 해결되는지 내 눈으로 확인해야 적 성이 풀림.',
      '인간 심리에 훤해서 중고로운 평화나라 사기꾼도 참교육 시켜줄 수 있는 경지에 다다름.',
      '이미 호구와는 거리가 먼 삶을 살아온 당신, 하지만 원숭이도 나무에서 떨어지는 법! 지능 화되는 최신 피싱 수법에만 잘 숙지해도 피싱은 먼나라 얘기~'
    ],
    exampleScenario: '',
    worstPartnerID: '',
    bestPartnerID: '');

///
List<ResultCatType> resultCatList = [
  resultCatType1,
  resultCatType2,
  resultCatType3
];
