import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TermsAndConditionsPage extends StatefulWidget {
  const TermsAndConditionsPage({Key? key}) : super(key: key);

  @override
  State<TermsAndConditionsPage> createState() => _TermsAndConditionsPageState();
}

class _TermsAndConditionsPageState extends State<TermsAndConditionsPage> {
  bool isServiceTab = true;
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0473e1),
      // backgroundColor: Colors.amber,
      body: Column(
        children: [
          SizedBox(height: 55.h),
          Container(
            height: 20.h,
            child: Row(
              children: [
                SizedBox(width: 22.5.w),
                Container(
                  height: 20.h,
                  padding: EdgeInsets.only(
                    bottom: 3.5.h,
                  ),
                  child: Container(
                      width: 5.w,
                      // height: 10.h,
                      child: TextButton(
                        child: Icon(
                          Icons.navigate_before,
                          color: Color(0xffffffff),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          print('pop');
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                          // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      )),
                ),
                SizedBox(width: 74.5.w),
                Container(
                  width: 39.w,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        isServiceTab = true;
                        scrollController.animateTo(
                            //go to top of scroll
                            0, //scroll offset to go
                            duration: Duration(
                                milliseconds: 200), //duration of scroll
                            curve: Curves.fastOutSlowIn //scroll type
                            );
                      });
                    },
                    child: Text("서비스",
                        style: TextStyle(
                            color: isServiceTab
                                ? Color(0xffffffff)
                                : Color(0xff6fb7fd),
                            fontWeight: FontWeight.w400,
                            fontFamily: "NotoSansCJKKR",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.sp),
                        textAlign: TextAlign.left),
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ),
                SizedBox(width: 65.w),
                Container(
                  width: 52.w,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        isServiceTab = false;
                        scrollController.animateTo(
                            //go to top of scroll
                            0, //scroll offset to go
                            duration: Duration(
                                milliseconds: 200), //duration of scroll
                            curve: Curves.fastOutSlowIn //scroll type
                            );
                      });
                    },
                    child: Text("개인정보",
                        style: TextStyle(
                            color: isServiceTab
                                ? Color(0xff6fb7fd)
                                : Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            fontFamily: "NotoSansCJKKR",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.sp),
                        textAlign: TextAlign.left),
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          Container(
              alignment: Alignment.centerLeft,
              width: 316.w,
              height: 631.h,
              padding: EdgeInsets.only(left: 8.w, right: 12.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6.sp)),
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0, -1),
                        blurRadius: 6,
                        spreadRadius: 0)
                  ],
                  color: const Color(0xffffffff)),
              child: isServiceTab
                  ? Container(
                      height: 632.h,
                      child: SingleChildScrollView(
                        controller: scrollController,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8.h),
                            Text("서비스 이용 약관",
                                style: TextStyle(
                                    color: const Color(0xff005db9),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "NotoSansCJKKR",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15.sp),
                                textAlign: TextAlign.left),
                            SizedBox(height: 13.h),
                            Text("제1조 약관의 목적",
                                style: TextStyle(
                                    color: const Color(0xff707070),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "NotoSansCJKKR",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10.sp),
                                textAlign: TextAlign.left),
                            SizedBox(height: 7.h),
                            Text(
                                "피싱캣 플러스 서비스 이용자 여러분 반갑습니다!\n피싱캣 플러스 서비스를 이용해 주셔서 감사합니다. 여러분이 이용하시면서 필요하시거나 궁금해하실 기본적인 서비스 이용 관련 정보를 약관에 담아 안내드립니다. 약관을 통해 AI굿윌보이스(이하 “회사”)와 회원(이하 ‘회원’)과의 권리, 의무 및 책임사항, 기타 사항을 확인하실 수 있으며 회사는 이 약관의 내용을 여러분이 쉽게 확인할 수 있도록 서비스 초기 화면에 게시합니다. 회사는 안정적인 서비스를 지속적으로 제공하기 위해 최선을 다해 노력해 나갈 것이며, 여러분이 조금만 시간을 내서 약관을 읽어주신다면, 여러분과 더욱 가까운 사이가 될 것이라고 믿습니다.\n\n약관에서 사용되는 용어의 정의와 해석은 다음과 같습니다.\n“회원”은 본 약관 및 개인정보처리방침에 동의하고 서비스 이용 자격을 부여 받은 자를 의미합니다.\n“서비스”는 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 회원이 이용할 수 있는 피싱캣 플러스 및 피싱캣 플러스 관련 제반 서비스를 의미합니다.\n“계정(ID)”은 회원의 식별과 서비스 이용을 위하여 회원이 정하는 문자, 숫자, 특수문자의 조합을 의미합니다.\n\n회사는 약관의 내용을 회원이 쉽게 알 수 있도록 게시하며, 사전 공지 후 개정합니다. 회사는 이 약관의 내용을 회원이 쉽게 알 수 있도록 서비스초기 화면 및 별도의 연결화면 또는 팝업화면 등에 게시합니다. 또한, 관련법령을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다. 약관을 개정할 경우에는 적용일자 및 개정사유 등을 명시하여 그 적용일자로부터 최소한 7일 이전(회원에게 불리하거나 중대한 사항의 변경은 30일 이전)부터 그 적용일자 경과 후 상당한 기간이 경과할 때까지 서비스에 게시합니다. 약관 개정 공지일로부터 개정약관 시행일 7일 후까지 본 개정약관에 대한 거부의사를 표시하지 않으면 개정약관에 동의한 것으로 봅니다. 개정약관의 적용에 동의하지 않는 경우 회원은 이용계약을 해지할 수 있습니다.\n\n약관과 기타약관은 상호 보완됩니다.\n회사는 유료서비스 및 개별 서비스에 대해서는 별도의 이용약관 및 정책(이하 “기타 약관 등”)을 둘 수 있습니다. 이 약관에서 정하지 아니한 사항이나 해석에 대해서는 “기타 약관” 및 관계법령 또는 상관례에 따릅니다.\n\n서비스의 실제 이용까지는 몇가지 절차가 필요합니다.\n회사가 제공하는 서비스를 이용하고자 하는 자는 이용약관 및 개인정보처리방침에 동의하는 방법으로 이용 신청을 하고, 회사가 이러한 신청에 대하여 승낙함으로써 체결됩니다. 회사는 회사가 이용자에게 요구하는 정보에 대해 이용자가 정보를 정확히 기재하여 이용신청을 한 경우에 상당한 이유가 없는 한 이용신청을 승낙합니다. 이용신청에 있어 회사는 전문기관을 통한 실명인증 및 본인인증을 요청할 수 있습니다. 다만, 회사는 다음 몇가지 경우에 대하여 승낙을 하지 않거나 사후에 이용계약을 해지할 수 있습니다.\n첫번째, 이용신청자가 이 약관에 의해 이전에 회원자격을 상실한 적이 있는 경우, 단 회사의 회원 재가입 승낙을 얻은 경우에는 예외로 처리 합니다.\n두번째, 실명이 아니거나, 타인의 명의를 이용한 경우입니다.\n세번째, 이미 가입된 회원의 정보와 동일한 경우(단말기정보, 전화번호, 전자우편 계정 등)입니다.\n네번째, 허위 정보를 기재하거나, “회사”가 제시하는 내용을 기재하지 않는 경우입니다.\n다섯번째, 14세 미만 아동이 법정대리인(부모 등)의 동의를 얻지 아니한 경우입니다.\n마지막으로 타인의 명예훼손을 한 경우 입니다.\n또한, 회사의 설비에 여유가 없거나 기술상 또는 업무상 문제가 있는 경우나 서비스 상의 장애 또는 서비스 이용요금 결제수단의 장애가 발생한 경우 등에는 승낙을 유보할 수 있습니다.\n\n여러분의 개인정보를 보호하기 위해 노력합니다.\n\n회사는 서비스 내에서 회원이 이용하는 서비스에 대한 내용을 저장ㆍ보관할 수 있습니다. (피싱캣 플러스는 모바일 관련 서비스로 수발신 내역 등을 포함합니다.)  그리고, 회원간의 분쟁 조정, 민원 처리 등을 위하여 회사가 필요하다고 판단하는 경우에 한하여 본 정보를 열람하도록 할 것이며, 본 정보는 회사만이 보유하고 법령으로 권한을 부여 받지 아니한 제3자는 절대로 열람할 수 없습니다. 다만, 앱 이용 중 공유 정보 기능을 통해서 다른 사람들의 정보가 보여질 수도 있습니다.  회사는 주기적으로 회원정보 및 발신자 ID를 업데이트하고 있으며, 회원 또는 제3자의 생성정보(스팸정보, 안심정보, 공유정보 등)가 객관성과 공정성을 유지하도록 하기 위하여 노력합니다.\n\n회사는 특정 생성정보가 허위 또는 과장된 정보이거나, 해당 정보의 공유가 회원 또는 제3자의 개인정보를 침해하는 것으로서 이로 인하여 피해가 발생할 우려가 있는 경우에는 해당 생성정보를 숨기거나 삭제할 권리가 있습니다. 특정 생성정보에 관하여 회원 또는 제3자로부터 불만사항이 제기된 경우, 회사는 관련 내용의 확인 및 검토를 통해서 30일 내에 해당 생성정보를 수정하거나 삭제할 수 있습니다. 그럼에도 불구하고 해당 정보에 대한 논쟁의 여지가 있다면 서비스를 통해 계속 정보가 노출될 것이며, 회사는 해당 정보의 수정 및 삭제에 대한 보증을 하지 않습니다. 회원 개인정보의 보호 및 사용에 대해서는 관계법령 및 회사가 별도로 고지하는 개인정보취급방침이 적용되며, 회사는 관계 법령이 정하는 바에 따라 계정정보를 포함한 회원의 개인정보를 보호하기 위해 노력합니다. 또한, 회사는 회원의 귀책사유로 인하여 노출된 회원의 계정정보를 포함한 모든 정보에 대해서 일체의 책임을 지지 않습니다.\n\n서비스 사용과 관련해서 주의사항이 요구됩니다.\n이용자분들은 서비스의 올바른 활용을 위해 다음 행동이 금지됩니다.\n\n신청 또는 변경 시 허위내용을 기재하는 것, 타인의 정보를 도용하는 것, 다른 회원의 개인정보 및 계정정보를 수집하는 행위, 회사가 금지한 정보(컴퓨터 프로그램 등)의 송신 또는 게시하는 것, 회사와 기타 제3자의 저작권 등 지적재산권에 대한 침해 행위, 회사 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위, 외설 또는 폭력적인 말이나 글, 화상, 음향, 기타 공서양속에 반하는 정보를 공개 또는 게시하는 행위, 회사의 동의 없이 영리, 영업, 광고를 목적으로 서비스를 사용하는 행위, 리버스엔지니어링, 디컴파일, 디스어셈블 및 기타 일체의 가공행위를 통하여 서비스를 복제, 분해 또는 모방 기타 변형하는 행위, 기타 관련 법령에서 금지하거나 선량한 풍속 기타 사회통념상 허용되지 않는 행위 등이 이에 해당합니다.\n\n또, 회원은 회사의 사전승인 없이 서비스를 이용하여 상품 재 판매, 상품 광고, 음란정보 등의 정보를 게시하거나 제 3자의 영업을 방해하는 행위, 제3자에 대한 허위사실 명기 및 명예훼손 등 제3자의 권리를 침해하는 행위를 할 수 없습니다. 이를 위배하여 발생한 활동의 결과 및 손실, 관계기관에 의한 법적 조치 등에 관해서는 회사가 책임지지 않습니다.\n\n만일 회원의 위반행위로 인하여 회사 및 제 3자에게 손해가 발생한 경우 회원은 회사 및 제 3자가 입은 피해를 배상해야 합니다. 또한 회원의 위반행위로 인하여 제3자가 입은 손해에 대해 회사가 이를 제 3자에게 배상한 경우, 회사는 회원을 상대로 구상권을 행사할 수 있습니다.\n\n이 약관의 규정, 이용안내 및 서비스와 관련하여 공지한 주의사항, 회사가 통지하는 사항 등을 확인하고 준수할 의무가 있으며, 기타 회사의 업무에 방해되는 행위를 하여서는 안됩니다.\n\n안정적 서비스 제공을 위해 노력합니다.\n서비스는 연중무휴, 1일 24시간 무 중단 제공을 원칙으로 합니다.\n다만, 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 정기점검, 통신두절 또는 운영상 상당한 이유가 있는 경우나 해킹 등의 전자적 침해사고, 통신사고, 미처 예상하지 못한 서비스의 불안정성에 대응하기 위하여 필요한 경우, 천재지변, 비상사태, 정전, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스 제공이 불가능할 경우와 회사의 분할, 합병, 영업양도, 영업의 폐지, 당해 서비스의 사업구조 악화 등 회사의 경영상 중대한 필요에 의한 경우 등의 이유로 서비스가 제공되지 않을 수 있습니다. 해당하는 사유로 서비스가 중단될 경우 사전에 회원에게 통지합니다. 다만, 회사가 사전에 통지할 수 없는 부득이한 사정이 있는 경우는 사후에 통지를 할 수 있습니다.\n\n다양한 정보를 제공할 수 있습니다.\n\n회사는 회원이 서비스 이용 중에 필요하다고 인정되는 다양한 정보를 전자우편, 모바일 어플리케이션 PUSH알림, SMS등의 방법을 통해 회원에게 제공할 수 있으며, 회원은 관련법에 따른 거래관련 정보 및 고객문의 등에 대한 답변 등을 제외하고는 언제든지 수신을 거절할 수 있습니다. 회사가 회원에 대하여 제공하는 정보는 다음과 같습니다.\n1. 회원이 특정 업체에 전화를 발신한 경우 해당 업체의 위치에 대한 검색결과를 회원에게 PUSH 알림으로 제공\n2. 회원이 특정 업체의 이름으로 저장된 전화번호로 발신하는 경우, 해당 업체의 홈페이지로 연결되는 링크를 PUSH 알림으로 제공\n모바일 어플리케이션 PUSH알림은 서비스 상 의무적으로 안내되어야 하는 정보성 내용에 한하여 발송합니다. 회원은 PUSH 알림에 대하여 수신을 거절할 수 있습니다.\n회사의 이용자의 메시지 내 포함된 URL이나 계좌번호 및 “입금”,”광고” 등의 특정 키워드를 분석하여 URL스미싱 및 이상 거래 계좌번호 조회를 통한 범죄 예방 정보를 제공합니다.\n회사는 특정 키워드 분석을 위해 메시지에 해당 키워드가 포함되어 있는지 여부를 로직으로 탐지하여 정보를 제공하며 메시지 내용 전체를 조회하지 않습니다.\n안전안심 서비스를 제공할 수 있습니다.\n\n본 서비스는 회원에게 금융피해가 발생할 것으로 의심되는 정보를 제공하는 생활 편의 서비스이며, 인명이나 재산 보호를 목적으로 하지 않습니다.\n1. 안심이 서비스\n본 서비스는 해당 약관에 동의한 전화번호로 로그인 된 회원의 위험상황 탐지 시 단말에 경고음을 출력하고, 회원이 등록한 상대에게 위험상황을 공유할 수 있습니다.회사는 위험상황 탐지를 위해 이용자 단말기에서 일어나는 활동 분석을 할 수 있습니다. 이를 통해 보이스피싱을 비롯한 금융사기를 탐지하고 피해를 예방하기 위한 알림을 제공합니다.\n첫번째, 회원의 위험상황이 탐지된 경우 회원에게 AI 보안관이 경고음으로 알림을 제공할 수 있습니다.\n두번째, 회원의 위험상황이 탐지된 경우 회원이 등록한 상대에게 PUSH 알림 및 메시지로 위험상황을 공유할 수 있습니다.\nAI 보안관 서비스는 기본으로 활성화되어 제공되는 서비스입니다. 단, 회원이 AI 보안관 서비스의 차단을 원할 경우에 안심이 설정에서 AI 보안관 서비스의 제한을 선택할 수 있습니다.\n군인회원의 경우, 별도 웹사이트에서 군인가족회원이 군인회원의 전화번호를 등록할 경우 안심이 상대방 등록 알림을 받을 수 있습니다.\n다양한 광고를 제공할 수 있습니다\n회사는 서비스 운영과 관련하여 서비스 화면, 홈페이지, 전자우편 등에 광고를 게재할 수 있으며, 회원은 광고가 게재된 전자우편에 대해서는 수신을 거절할 수 있습니다. 광고성 정보는 사전에 마케팅 정보 수신 동의를 한 회원에게만 발송됩니다. 회원은 정보성 알림과 광고가 게재된 광고성 PUSH알림에 대해서 수신을 거절 할 수 있습니다. 광고를 게재할 수 있는 서비스 화면은 후후 서비스를 통해 실행되는 전화 수신/발신화면, 통화 종료화면, 부재중 통화화면, 문자 수신화면 등의 영역을 포함합니다. 또한 회사가 회원에게 발송하는 광고는, 회원이 특정 업체에서 제공하는 상품의 이름으로 저장된 전화번호로 발신하는 경우 해당 상품 소개 홈페이지로 연결되는 링크를 발송하거나, 회원의 휴대전화에 특정 앱이 설치되어 있는지 여부를 확인한 후(이 과정에서 회사는 개인정보 보호에 관한 제반규정을 준수합니다) 해당 전화번호에 대하여 문자 또는 전화가 수신될 때 해당 앱과 관련된 업체에 대한 광고를 배너 형태로 노출하는 등 다양한 방식으로 발송됩니다. 또한, 회사는 키워드를 활용한 개인 맞춤형 정보와 광고를 게재할 수 있습니다. 즉, 회사는 회원이 수신한 문자 내용에 특정 키워드가 포함되어 있는지 여부만을 확인하고, 확인된 키워드를 해시태그 형태로 문자 알림창 하단에 표출한 후, 해시태그를 클릭할 때 해당 키워드에 대한 검색결과 페이지로 이동할 수 있도록 하는 서비스를 제공합니다. 회원은 본 이용약관의 내용에 동의함으로써 회사가 위 서비스를 회원에게 제공하는 것에 관하여 동의하며, 언제든지 위 동의를 철회할 수 있습니다.\n유료서비스를 제공할 수 있습니다.\n회사는 무료로 서비스를 제공하고 있으나, 일부 서비스의 경우 유료로 제공할 수 있습니다. 예를 들면 광고가 포함된 후후는 무료이나, 광고 없는 후후 등은 유료로 이용해야 합니다. 유료서비스의 명칭, 내용, 이용방법, 이용료, 환불 방법 등 이용과 관련한 사항을 유료서비스 안내 페이지 내에 회원이 알기 쉽게 표시합니다. 회사는 결제의 이행을 위하여 반드시 필요한 여러분의 개인정보를 추가적으로 요구할 수 있으며, 여러분은 회사가 요구하는 개인정보를 정확하게 제공해야 합니다. 각 유료서비스마다 결제 방법의 차이가 있을 수 있으며, 매월 정기적인 결제가 이루어지는 서비스의 경우 여러분 개인이 해당 서비스의 이용을 중단하고 정기 결제의 취소를 요청하지 않는 한 매월 결제가 이루어집니다. 유료서비스 결제는 앱마켓 등을 통한 인앱결제를 통해서만 이루어지며, 유료서비스의 결제 또는 과오납금의 환불, 이용계약의 해제 또는 해지, 서비스의 결함으로 인하여 발생하는 손해의 보상 등에 관하여는 결제가 이루어지는 해당 앱마켓의 이용약관 규정이 적용됩니다.\n\n서비스에 대한 권리를 존중해 주시기 바랍니다.\n회원이 서비스 내에서 작성한 게시물에 대한 모든 권리 및 책임은 이를 게시한 회원에게 있으며, 회사는 회원이 작성한 게시물이 다른 회원 또는 제 3자를 비방하거나 중상모략, 허위정보 등으로 명예훼손 및 영업방해를 하는 내용이거나, 공공질서 및 미풍양속에 위반되는 내용의 경우 해당 게시물을 삭제 할 수 있습니다.\n또한 범죄적 행위에 결부된다고 인정되는 경우, 회사의 저작권 또는 제 3자의 저작권 등 기타 권리를 침해하는 내용인 경우, 회원이 서비스에 음란물을 게재하거나 음란사이트를 링크하는 경우, 회사로부터 사전에 승인 받지 아니한 상업광고, 판촉 내용을 게시하는 경우, 정당한 사유 없이 회사의 영업을 방해하는 내용을 게재하는 경우, 기타 관계법령에 위반된다고 판단되는 경우에도 삭제가 가능합니다. 이에 대하여 회사는 어떠한 책임도 지지 않습니다.\n만약 회원의 위반행위로 인하여 제3자가 입은 손해에 대해 회사가 이를 제3자에게 배상한 경우, 회사는 회원을 상대로 구상권을 행사할 수 있습니다.\n게시물은 「정보통신망이용촉진 및 정보보호 등에 관한 법률」 및 「저작권법」 등 관련법에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 해당 게시물의 게시를 중단하거나 삭제를 요청할 수 있으며, 관련법에 따라 조치를 취할 수 있습니다. 회사는 회원이 작성한 게시물을 서비스 제휴업체에 제공할 수 있습니다.\n서비스에 대한 저작권 및 지적재산권은 회사의 소유입니다. 다만, 사업 제휴에 따라 제공받은 저작물은 제외합니다. 회원은 회사가 제공하는 서비스를 이용함으로써 얻은 정보 중 회사 또는 제공업체에 지적재산권이 귀속된 정보를 회사 또는 제공업체의 사전승낙 없이 복제, 전송, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안 됩니다. 회원은 회사에서 정한 이용조건에 따라 계정(ID), 서비스 콘텐츠 등을 이용할 수 있는 이용권한만 부여 받습니다. 회원은 이를 양도, 판매, 담보제공 등의 처분행위를 할 수 없습니다.\n\n위치정보 활용 동의 및 철회는 언제든 가능합니다.\n회사는 일부 서비스를 제공하기 위해 회원의 위치정보를 활용할 수 있습니다. 회원의 위치정보는 검색기능을 통해 특정상호 또는 전화번호로 정보를 검색할 때 활용됩니다. 회사는 서비스를 제공하는 과정에서 활용된 회원의 위치정보를 별도로 수집하지 않습니다. 활용되는 회원의 위치정보는 서비스를 이용하는 시점에 목적지까지의 거리 및 목적지의 위치 등의 정보를 검색하기 위해서만 활용됩니다.\n회사는 회원에게 위치정보 활용에 대한 동의를 얻을 수 있습니다. 회원은 위치정보 활용을 원하지 않을 경우 위치정보 활용을 거절할 수 있습니다. 다만, 위치정보 활용에 동의하지 않은 경우에는 위치정보를 활용하여 제공되는 지도 및 거리순 정렬 서비스 등을 이용할 수 없습니다. 회원이 이미 동의한 위치정보 활용에 대해 동의를 철회하고자 할 경우에 단말기 기본설정에 위치정보 설정메뉴를 통하여 위치정보 활용에 대한 동의를 철회 할 수 있습니다.\n\n회사는 개인맞춤형 서비스의 이용과 관련하여 비식별화된 정보를 제3자에게 위탁합니다.\n회사는 1) 후후 서비스 이용 고객의 통화 수발신 시간 정보 2) 후후 서비스 이용 고객의 수발신 상호 3) 후후 서비스 이용 고객의 수발신 위치정보 4) 후후 서비스 이용 고객의 수발신량의 정보를 비식별화 조치를 통하여 “개인 식별이 불가능한 정보”로 재생성 한 후 이를 회사와 제휴한 사업자에게 제공하고 회원은 이에 동의합니다. 만일 이에 동의하지 않을 경우 일부 서비스의 이용이 제한될 수 있습니다.\n\n원치 않으시면 해지하실 수 있습니다.\n회원은 서비스 내 회원탈퇴 메뉴를 통하여 이용계약을 해지할 수 있으며, 서비스의 삭제 또는 1년간 서비스 이용내역이 없을 경우 계약이 해지됩니다. 회사는 관련법 등이 정하는 바에 따라 이를 처리합니다. 회원이 계약을 해지하는 경우 관련법 및 개인정보처리방침에 따라 회사가 회원정보를 보유하는 경우를 제외하고는 이용계약 해지와 함께 회원정보는 소멸됩니다. 다만, 회원이 계약을 해지하는 경우에 회원이 작성한 게시물은 삭제되지 않습니다.\n\n부득이하게 이용에 제한을 받으실 수 있습니다.\n회사는 회원이 약관의 의무를 위반하거나 서비스의 정상적인 운영을 방해한 경우 경고, 계약해지 등 단계적으로 서비스 이용을 제한할 수 있습니다. 제한의 조건 및 세부내용은 회사의 이용제한정책 등에서 정한 바에 의합니다. 회사는 회원이 이 약관에서 정한 회원의 의무를 위반한 경우에는 회원에 대한 사전 통보 후 계약을 해지할 수 있습니다. 다만, 회원이 현행법 위반 및 고의 또는 중대한 과실로 회사에 손해를 입힌 경우에는 사전 통보 없이 이용계약을 해지할 수 있습니다. 회사가 이용계약을 해지하는 경우 회사는 회원에게 서면, 전자우편 또는 이에 준하는 방법으로 해지사유와 해지일을 회원에게 통보합니다. 회원은 본 조에 따른 이용제한 등에 대해 회사가 정한 절차에 따라 이의신청을 할 수 있습니다. 회사는 회원의 이의가 정당하다고 인정되는 경우 즉시 회원의 서비스 이용을 재개합니다. 서비스 이용을 제한하거나 계약을 해지하는 경우에는 회사는 통지 방식에 따라 알리게 되며 이 때 여러분은 회사가 정한 절차에 따라 이의신청을 할 수 있습니다. 이의가 정당하다고 회사가 인정하는 경우 회사는 즉시 서비스의 이용을 재개합니다.\n\n서비스 운영에 대한 책임 중 몇가지 예외 사항이 있습니다.\n회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제되며, 회원의 귀책사유로 인한 서비스 이용의 장애 및 계약해지에 대하여 책임을 지지 않습니다. 또한 기간통신 사업자가 전기통신서비스를 중지하거나 정상적으로 제공하지 아니하여 회원에게 손해가 발생한 경우에 대해서 회사의 고의 또는 중대한 과실이 없는 한 책임이 면제됩니다. 회사 및 회사의 임직원 그리고 대리인은 회원의 신청정보 및 기타 정보(전화번호 상호정보 등)의 허위 또는 부정확성에 기인하는 손해, 그 성질과 경위를 불문하고 서비스에 대한 접속 및 서비스 이용과정에서 발생하는 개인적 손해, 서버에 대한 제3자의 모든 불법적인 접속 또는 서버의 불법적인 이용으로 발생하는 손해, 제3자가 서비스를 이용하여 불법적으로 전송, 유포하거나 또는 전송, 유포되도록 한 모든 바이러스, 스파이 웨어 및 기타 악성 프로그램으로 인한 손해, 전송된 데이터의 오류 및 생략, 누락, 파괴 등으로 발생되는 손해, 회원간 서비스 이용과정에서 발생하는 명예훼손 및 기타 불법행위로 인한 각종 민형사상 책임을 지지 않습니다. 또한 회원이 서비스와 관련하여 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 대해서는 보증하지 않으며, 회원 사이 또는 회원이 제3자와 상호간에 서비스를 매개로 하여 발생한 분쟁에 대해서는 개입할 의무가 없으며 책임이 면제됩니다. 그 밖에도 무료로 제공되는 서비스 이용과 관련하여 관련법에 특별한 규정이 없는 한 책임을 지지 않습니다.\n\n회원은 다음의 경우에 회사에 대하여 손해배상책임을 부담합니다.\n“회사”는 “회원” 이 서비스를 이용함에 있어 회사의 고의 또는 과실로 인해 손해가 발생한 경우에는 민법 등 관련 법령이 규율 하는 범위 내에서 그 손해를 배상합니다.\n“회원”은 이 약관을 위반하거나 관계법령을 위반하여 “회사”에 손해가 발생한 경우에는 “회사”에 그 손해를 배상하여야 합니다.\n“회원”은 이 약관을 위반하거나 관계법령을 위반하여 제3자가 “회사”를 상대로 민형사상의 법적 조치를 취하는 경우, 자신의 비용과 책임으로 “회사”를 면책시켜야 하며, 이로 인해 발생하는 손해에 대해 배상하여야 합니다.",
                                style: TextStyle(
                                    color: const Color(0xff707070),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "SegoeUI",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 8.sp),
                                textAlign: TextAlign.left)
                          ],
                        ),
                      ),
                    )
                  : Container(
                      height: 632.h,
                      child: SingleChildScrollView(
                        controller: scrollController,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8.h),
                              Container(
                                child: Text("개인정보 처리방침",
                                    style: TextStyle(
                                        color: const Color(0xff005db9),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "NotoSansCJKKR",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 15.sp),
                                    textAlign: TextAlign.left),
                              ),
                              SizedBox(height: 13.h),
                              Text(
                                  '주식회사 에이아이굿윌보이스(이하 \'피싱캣\')는 「개인정보 보호법」 제30조에 따라 정보주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리방침을 수립·공개합니다.\n“피싱캣”은 개인정보처리방침을 개정하는 경우 홈페이지 공지사항을 통하여 공지할 것입니다.\n\n◈ 이 개인정보처리방침은 2022년 1월 10부터 적용됩니다.',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 9.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 15.h),
                              Text("제1조(개인정보의 처리 목적)",
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "NotoSansCJKKR",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 10.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '피싱캣은 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목 적 이외의 용도로는 이용되지 않으며 이용 목적이 변경되는 경우에는 「개인정보 보호법」 제 18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.\n\n가. 홈페이지 회원가입 및 관리\n\n회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리, 서비스 부정이용 방지, 각종 고지·통지, 고충처리 목적으로 개인정보를 처리합니다.\n\n나. 민원사무 처리\n\n민원인의 신원 확인, 민원사항 확인, 사실조사를 위한 연락·통지, 처리결과 통보 목적으로 개 인정보를 처리합니다.\n\n다. 재화 또는 서비스 제공\n\n서비스 제공, 콘텐츠 제공, 맞춤서비스 제공, 본인인증, 연령인증을 목적으로 개인정보를 처리 합니다.\n\n라. 마케팅 및 광고에의 활용\n\n신규 서비스(제품) 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보 제공 및 참여기회 제공, 인구통계학적 특성에 따른 서비스 제공 및 광고 게재, 서비스의 유효성 확인, 접속빈도 파악 또는 회원의 서비스 이용에 대한 통계 등을 목적으로 개인정보를 처리합니다.',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 13.h),
                              Text("제2조(개인정보의 처리 및 보유 기간)",
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "NotoSansCJKKR",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 10.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '① 피싱캣은 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의받은 개인정보 보유·이용기간 내에서 개인정보를 처리·보유합니다.\n\n⓶ 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.\n\n가. 서비스 회원가입 및 관리\n서비스 회원가입 및 관리와 관련한 개인정보는 수집ᆞ이용에 관한 동의일로부터 회원탈퇴까지 아래의 이용목적을 위하여 보유ᆞ이용됩니다.\n\n- 서비스 방문기록 및 이용내역\n보유이유 : 회사 내부방침에 따른 부정이용 방지\n보존기간 : 서비스 계약 해지 후 1년\n관련법령 : 통신비밀보호법\n예외사유 : 이용자가 직접 회원을 탈퇴 시 이용자의 개인정보는 즉시 삭제됩니다.\n\n나. 민원사무 처리\n민원사무 처리와 관련한 개인정보는 수집.이용에 관한 동의일로부터 3년동안 아래 이용목적을 위하여 보유.이용됩니다.\n\n- 소비자의 불만 또는 분쟁처리에 관한 기록\n보존이유 : 전자상거래 등에서의 소비자보호에 관한 법률\n관련법령 : 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년\n\n다. 재화 또는 서비스 제공\n재화 또는 서비스 제공와 관련한 개인정보는 수집.이용에 관한 동의일로부터 회원탈퇴까지까 지 위 이용목적을 위하여 보유.이용됩니다.\n\n라. 마케팅 및 광고에의 활용\n마케팅 및 광고에의 활용과 관련한 개인정보는 수집.이용에 관한 동의일로부터 회원탈퇴까지 까지 위 이용목적을 위하여 보유.이용됩니다.',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 13.h),
                              Text("제3조(개인정보의 제3자 제공)",
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "NotoSansCJKKR",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 10.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '① 피싱캣은 개인정보를 제1조(개인정보의 처리 목적)에서 명시한 범위 내에서만 처리하며, 정보주체의 동의, 법률의 특별한 규정 등 「개인정보 보호법」 제17조 및 제18조에 해당하는 경 우에만 개인정보를 제3자에게 제공합니다.\n\n⓶ 피싱캣은 다음과 같이 개인정보를 제3자에게 제공하고 있습니다.\n',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              DataTable(
                                dataRowHeight: 45.h,
                                horizontalMargin: 3.w,
                                columnSpacing: 0,
                                headingRowHeight: 30.h,
                                border: TableBorder.all(width: 0.5),
                                columns: [
                                  DataColumn(
                                      label: Text(
                                    '개인정보를 제공받는 자',
                                    style: TextStyle(
                                        color: const Color(0xff707070),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "SegoeUI",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 8.sp),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    '정보 제공 목적',
                                    style: TextStyle(
                                        color: const Color(0xff707070),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "SegoeUI",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 8.sp),
                                  )),
                                  DataColumn(
                                      label: Text('제공하는 내역',
                                          style: TextStyle(
                                              color: const Color(0xff707070),
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "SegoeUI",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 8.sp),
                                          textAlign: TextAlign.left)),
                                  DataColumn(
                                      label: Text('파기 정책',
                                          style: TextStyle(
                                              color: const Color(0xff707070),
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "SegoeUI",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 8.sp),
                                          textAlign: TextAlign.left)),
                                ],
                                rows: [
                                  DataRow(cells: [
                                    DataCell(Container(
                                      width: 75.w,
                                      child: Text('경찰청, 금융보안원, 금융감독원, KISA',
                                          style: TextStyle(
                                              color: const Color(0xff707070),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "SegoeUI",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 8.sp),
                                          textAlign: TextAlign.left),
                                    )),
                                    DataCell(Container(
                                      width: 75.w,
                                      child: Text('보이스피싱 예방 및 수사',
                                          style: TextStyle(
                                              color: const Color(0xff707070),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "SegoeUI",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 8.sp),
                                          textAlign: TextAlign.left),
                                    )),
                                    DataCell(Container(
                                      width: 75.w,
                                      child: Text('이메일, 휴대전화번호',
                                          style: TextStyle(
                                              color: const Color(0xff707070),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "SegoeUI",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 8.sp),
                                          textAlign: TextAlign.left),
                                    )),
                                    DataCell(Container(
                                      width: 75.w,
                                      child: Text('수사종결시',
                                          style: TextStyle(
                                              color: const Color(0xff707070),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "SegoeUI",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 8.sp),
                                          textAlign: TextAlign.left),
                                    ))
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text('보호자(등록된 상대방)',
                                        style: TextStyle(
                                            color: const Color(0xff707070),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "SegoeUI",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 8.sp),
                                        textAlign: TextAlign.left)),
                                    DataCell(Text(
                                      '위험상황에 대한 정보(위험전화와 통화중 금융행위 시 위험 알림 등)',
                                      style: TextStyle(
                                          color: const Color(0xff707070),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "SegoeUI",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 8.sp),
                                    )),
                                    DataCell(Text(
                                      '보안관 서비스 제공',
                                      style: TextStyle(
                                          color: const Color(0xff707070),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "SegoeUI",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 8.sp),
                                    )),
                                    DataCell(Text('서비스 이용기간',
                                        style: TextStyle(
                                            color: const Color(0xff707070),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "SegoeUI",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 8.sp),
                                        textAlign: TextAlign.left))
                                  ]),
                                ],
                              ),
                              SizedBox(height: 13.h),
                              Text("제4조(개인정보처리 위탁)",
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "NotoSansCJKKR",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 10.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '① 피싱캣은 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.\n',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              DataTable(
                                dataRowHeight: 40.h,
                                horizontalMargin: 3.w,
                                columnSpacing: 0,
                                headingRowHeight: 30.h,
                                border: TableBorder.all(width: 0.5),
                                columns: [
                                  DataColumn(
                                      label: Text(
                                    '수탁업체',
                                    style: TextStyle(
                                        color: const Color(0xff707070),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "SegoeUI",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 8.sp),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    '위탁 내용',
                                    style: TextStyle(
                                        color: const Color(0xff707070),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "SegoeUI",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 8.sp),
                                  )),
                                  DataColumn(
                                      label: Text('위탁 기간',
                                          style: TextStyle(
                                              color: const Color(0xff707070),
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "SegoeUI",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 8.sp),
                                          textAlign: TextAlign.left)),
                                ],
                                rows: [
                                  DataRow(cells: [
                                    DataCell(Container(
                                      width: 100.w,
                                      child: Text('주식회사 네이버 클라우드 플랫폼',
                                          style: TextStyle(
                                              color: const Color(0xff707070),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "SegoeUI",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 8.sp),
                                          textAlign: TextAlign.left),
                                    )),
                                    DataCell(Container(
                                      width: 100.w,
                                      child: Text('본인인증(금융거래, 금융서비 스)',
                                          style: TextStyle(
                                              color: const Color(0xff707070),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "SegoeUI",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 8.sp),
                                          textAlign: TextAlign.left),
                                    )),
                                    DataCell(Container(
                                      width: 100.w,
                                      child: Text('회원 탈퇴시 혹은 위탁 계약 종료시까지',
                                          style: TextStyle(
                                              color: const Color(0xff707070),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "SegoeUI",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 8.sp),
                                          textAlign: TextAlign.left),
                                    ))
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      'Wix.com',
                                      style: TextStyle(
                                          color: const Color(0xff707070),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "SegoeUI",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 8.sp),
                                    )),
                                    DataCell(Text(
                                      '정보시스템 통합유지보수',
                                      style: TextStyle(
                                          color: const Color(0xff707070),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "SegoeUI",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 8.sp),
                                    )),
                                    DataCell(Text('처리목적 달성시 또는 위탁 계약 종료시까지',
                                        style: TextStyle(
                                            color: const Color(0xff707070),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "SegoeUI",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 8.sp),
                                        textAlign: TextAlign.left))
                                  ]),
                                ],
                              ),
                              SizedBox(height: 7.h),
                              Text(
                                  '⓶ 피싱캣은 위탁계약 체결시 「개인정보 보호법」 제26조에 따라 위탁업무 수행목적 외 개인 정보 처리금지, 기술적.관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리.감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '⓷ 위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 13.h),
                              Text("제5조(정보주체와 법정대리인의 권리·의무 및 그 행사방법)",
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "NotoSansCJKKR",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 10.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '① 정보주체는 피싱캣에 대해 언제든지 개인정보 열람·정정·삭제·처리정지 요구 등의 권리를 행사할 수 있습니다.',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '⓶ 제1항에 따른 권리 행사는 피싱캣에 대해 「개인정보 보호법」 시행령 제41조 제1항에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 할 수 있으며 피싱캣은 이에 대해 지체없이 조치 하겠습니다.',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '⓷ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 할 수 있습니다. 이 경우 “개인정보 처리 방법에 관한 고시(제2020-7호)” 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '⓸ 개인정보 열람 및 처리정지 요구는 「개인정보 보호법」 제35조 제4항, 제37조 제2항에 의하여 정보주체의 권리가 제한될 수 있습니다.',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '⓹ 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '⓺ 피싱캣은 정보주체 권리에 따른 열람의 요구, 정정·삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 13.h),
                              Text("제6조(처리하는 개인정보의 항목 작성)",
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "NotoSansCJKKR",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 10.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '① 피싱캣은 다음의 개인정보 항목을 처리하고 있습니다.\n\n가. 홈페이지 회원가입 및 관리\n필수항목 : 이메일, 휴대전화번호, 성별, 생년월일, 닉네임\n선택항목 : 유형, 통화량, 최근 관심 있는 금융상품\n\n나. 민원사무 처리\n필수항목 : 이메일, 휴대전화번호\n선택항목 : 단말기모델명, 단말기OS명, 단말기 OS 버전\n\n다. 재화 또는 서비스 제공\n필수항목 : URL이 포함된 문자/알림 내용\n선택항목 : 악성앱 및 금융앱 등의 설치 유무',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 13.h),
                              Text("제7조(개인정보의 파기)",
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "NotoSansCJKKR",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 10.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '피싱캣은 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.\n\n가. 파기 절차\n이용자가 입력한 정보는 목적 달성 후 별도의 데이터베이스에 옮겨져(서면의 경우 별도의 서 류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, 데이터베이스로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다. 이 때 다른 법령에 따라 개인정보를 계속 보존해야 하는 경우는 아래와 같습니다.\n\n- 서비스 방문기록 및 이용내역\n보유이유 : 회사 내부방침에 따른 부정이용 방지\n보존기간 : 서비스 계약 해지 후 1년\n보존하는 개인정보 항목: 전화번호, 닉네임, 접속IP\n\n- 소비자의 불만 또는 분쟁처리에 관한 기록\n보존이유: 전자상거래 등에서의 소비자보호에 관한 법률\n보존기간: 3년\n보존하는 개인정보 항목: 이메일, 문의내역\n\n나. 개인정보 파기의 절차 및 방법은 다음과 같습니다.\n1. 파기절차\n피싱캣은 파기 사유가 발생한 개인정보를 선정하고, 피싱캣의 개인정보 보호책임자의 승인을 받아 개인정보를 파기합니다.\n\n2. 파기방법\n전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다. 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 13.h),
                              Text("제8조(개인정보의 안전성 확보 조치)",
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "NotoSansCJKKR",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 10.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '피싱캣은 개인정보의 안전성 확보를 위해 다음과 같은 조치를 취하고 있습니다.\n\n1. 정기적인 자체 감사 실시\n개인정보 취급 관련 안정성 확보를 위해 정기적(분기 1회)으로 자체 감사를 실시하고 있습니 다.\n\n2. 개인정보 취급 직원의 최소화 및 교육\n개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.\n\n3. 내부관리계획의 수립 및 시행\n개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.\n\n4. 해킹 등에 대비한 기술적 대책\n피싱캣은 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프 로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다.\n\n5. 개인정보의 암호화\n이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어, 본인만이 알 수 있으며 중요한 데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.\n\n6. 접속기록의 보관 및 위변조 방지\n개인정보처리시스템에 접속한 기록을 최소 1년 이상 보관, 관리하고 있으며,다만, 5만명 이상 의 정보주체에 관하여 개인정보를 추가하거나, 고유식별정보 또는 민감정보를 처리하는 경우 에는 2년이상 보관, 관리하고 있습니다.\n또한, 접속기록이 위변조 및 도난, 분실되지 않도록 보안기능을 사용하고 있습니다.\n\n7. 개인정보에 대한 접근 제한\n개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정 보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로 부터의 무단 접근을 통제하고 있습니다.\n\n8. 문서보안을 위한 잠금장치 사용\n개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.\n\n9. 비인가자에 대한 출입 통제\n개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 13.h),
                              Text("제9조(개인정보 자동 수집 장치의 설치•운영 및 거부에 관한 사항)",
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "NotoSansCJKKR",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 10.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '① 피싱캣은 이용자에게 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는 ‘쿠키(cookie)’를 사용합니다.\n⓶ 쿠키는 웹사이트를 운영하는데 이용되는 서버(http)가 이용자의 컴퓨터 브라우저에게 보내 는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.\n\n가. 쿠키의 사용 목적 : 이용자가 방문한 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 인기 검색어, 보안접속 여부, 등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용됩니다.\n나. 쿠키의 설치•운영 및 거부 : 웹브라우저 상단의 도구>인터넷 옵션>개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부 할 수 있습니다.\n다. 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 13.h),
                              Text("제10조 (개인정보 보호책임자)",
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "NotoSansCJKKR",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 10.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '① 피싱캣은 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보 주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.\n\n▶ 개인정보 보호책임자\n성명 :김다은\n직책 :개인정보 보호책임자(CPO)\n직급 :팀장\n연락처 :010-6579-1301, phishingkatcs@gmail.com.\n\n⓶ 정보주체께서는 피싱캣의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. 피싱캣은 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 13.h),
                              Text("제11조(개인정보 열람청구)",
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "NotoSansCJKKR",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 10.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '정보주체는 「개인정보 보호법」 제35조에 따른 개인정보의 열람 청구를 아래의 부서에 할 수 있습니다.\n피싱캣은 정보주체의 개인정보 열람청구가 신속하게 처리되도록 노력하겠습니다.\n\n▶ 개인정보 열람청구 접수·처리 부서\n부서명 : 개인정보 열람청구 접수ᆞ처리 담당자\n담당자 : 김다은\n연락처 : 010-6579-1301, phishingkatcs@gmail.com.',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 13.h),
                              Text("제12조(권익침해 구제방법)",
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "NotoSansCJKKR",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 10.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '정보주체는 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진 흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이 밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.\n\n1. 개인정보분쟁조정위원회 : (국번없이) 1833-6972 (www.kopico.go.kr)\n2. 개인정보침해신고센터 : (국번없이) 118 (privacy.kisa.or.kr)\n3. 대검찰청 : (국번없이) 1301 (www.spo.go.kr)\n4. 경찰청 : (국번없이) 182 (ecrm.cyber.go.kr)\n\n「개인정보보호법」제35조(개인정보의 열람), 제36조(개인정보의 정정·삭제), 제37조(개인정보의 처리정지 등)의 규정에 의한 요구에 대 하여 공공기관의 장이 행한 처분 또는 부작위로 인하 여 권리 또는 이익의 침해를 받은 자는 행정심판법이 정하는 바에 따라 행정심판을 청구할 수 있습니다.\n\n※ 행정심판에 대해 자세한 사항은 중앙행정심판위원회(www.simpan.go.kr) 홈페이지를 참고 하시기 바랍니다.',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 13.h),
                              Text("제13조(개인정보 처리방침 변경)",
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "NotoSansCJKKR",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 10.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 7.h),
                              Text(
                                  '① 이 개인정보처리방침은 2022년 1월 10부터 적용됩니다.\n\n⓶ 이전의 개인정보 처리방침은 당사 홈페이지(www.phishingkat.com)에서 확인하실 수 있습니다.\n',
                                  style: TextStyle(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SegoeUI",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 8.sp),
                                  textAlign: TextAlign.left),
                            ]),
                      ),
                    ))
        ],
      ),
    );
  }
}
