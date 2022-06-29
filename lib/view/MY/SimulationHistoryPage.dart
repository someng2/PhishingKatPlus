import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voskat/controller/ScenrioTypeController.dart';

class SimulationHistoryPage extends StatefulWidget {
  const SimulationHistoryPage({Key? key}) : super(key: key);

  @override
  State<SimulationHistoryPage> createState() => _SimulationHistoryPageState();
}

class _SimulationHistoryPageState extends State<SimulationHistoryPage> {
  List<String> phishingType = [
    '보험',
    '게임',
    '택배',
    '주식',
    '지원금',
    '취업',
    '중고거래',
    '이성교제',
    '대출',
  ];

  @override
  Widget build(BuildContext context) {
    List<bool> isExpanded = List.filled(phishingType.length, false);

    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(47.h), // here the desired height
            child: AppBar(
              leading: Container(
                width: 7.5.w,
                height: 2.h,
                child: TextButton(
                  child: Image.asset(
                    'image/back_button.png',
                    color: const Color(0xff000000),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
              ),
              elevation: 0,
              backgroundColor: const Color(0xffeaf5ff),
              title: Text("과거 훈련 이력",
                  style: TextStyle(
                      color: const Color(0xff0b80f5),
                      fontWeight: FontWeight.w400,
                      fontFamily: "YDIYGO320",
                      fontStyle: FontStyle.normal,
                      fontSize: 17.sp),
                  textAlign: TextAlign.center),
              centerTitle: true,
            )),
        body: ListView.separated(
          itemCount: phishingType.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Row(
                children: [
                  Container(
                    width: 30.w,
                    child: Image.asset(ScenarioTypeController()
                        .getActiveIcon(phishingType[index])),
                  ),
                  SizedBox(
                    width: 18.w,
                  ),
                  Text(
                    phishingType[index],
                    style: TextStyle(
                        color: const Color(0xff0b80f5),
                        fontWeight: FontWeight.w400,
                        fontFamily: "NotoSansCJKKR",
                        fontStyle: FontStyle.normal,
                        fontSize: 20.sp),
                  ),
                ],
              ),
              children: _getChildren(phishingType[index]),
              iconColor: Color(0xff005db9),
              collapsedIconColor: Color(0xff9b9b9b),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: const Color(0xfff0f0f0),
              height: 0,
              thickness: 1,
            );
          },
        ));
  }

  List<Widget> _getChildren(String subtype) {
    return [
      Container(
        height: 255.h,
        decoration: BoxDecoration(
            color: const Color(0xfff6f6f6)
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30.w, top: 9.h),
              child: Row(
                children: [
                  Container(
                      width: 22.w,
                      child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 22.sp,
                              height: 22.sp,
                              child: Image.asset(
                                  'image/thumbsUpIcon.png'),
                            ),
                            SizedBox(height: 8.h),
                            Container(
                              width: 20.sp,
                              height: 20.sp,
                              child: Image.asset(
                                  'image/badMoodIcon.png'),
                            ),
                          ])),
                  SizedBox(width: 1.w),
                  Container(
                    width: 50.w,
                    padding: EdgeInsets.only(top: 9.h),
                    child: Column(children: [
                      Container(
                        alignment: Alignment.center,
                        width: 50.w,
                        height: 17.h,
                        // margin: EdgeInsets.only(top: 2.h),
                        decoration: BoxDecoration(
                            color: const Color(0xfffffcd3)),
                        child: Text(
                          '최고기록',
                          style: TextStyle(
                              color: const Color(0xffffb800),
                              fontWeight: FontWeight.w700,
                              fontFamily: "HancomMalangMalang",
                              fontStyle: FontStyle.normal,
                              fontSize: 12.sp),
                        ),
                      ),
                      SizedBox(height: 7.h),
                      Container(
                        alignment: Alignment.center,
                        width: 50.w,
                        height: 17.h,
                        // margin: EdgeInsets.only(top: 1.h),
                        decoration: BoxDecoration(
                            color: const Color(0xffffdcdc)),
                        child: Text(
                          '최저기록',
                          style: TextStyle(
                              color: const Color(0xffff6b6b),
                              fontWeight: FontWeight.w700,
                              fontFamily: "HancomMalangMalang",
                              fontStyle: FontStyle.normal,
                              fontSize: 12.sp),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    children: [
                      SizedBox(height: 9.h),
                      Text(
                        '2022. 03. 30',
                        style: TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "AppleSDGothicNeoL00",
                            fontStyle: FontStyle.normal,
                            fontSize: 12.sp),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        '2022. 02. 15',
                        style: TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "AppleSDGothicNeoL00",
                            fontStyle: FontStyle.normal,
                            fontSize: 12.sp),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15.h,),
            Container(
              width: 360.w,
              height: 171.h,
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.only(left: 19.w, right: 22.w),
                child: Text('graph'))
          ],
        ),
      )
    ];
  }
}
