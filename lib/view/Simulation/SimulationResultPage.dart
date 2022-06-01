// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voskat/controller/CatTypeController.dart';
import 'package:voskat/controller/ScenarioController.dart';
import 'package:voskat/controller/SimulationResultController.dart';
import 'package:voskat/model/simulation/scenario.dart';
import 'package:voskat/tempData/scenarioData.dart';
import 'package:get/get.dart';

import 'package:voskat/view/HomePage.dart';

class SimulationResultPage extends StatefulWidget {
  String sid;

  SimulationResultPage({Key? key, required this.sid}) : super(key: key);

  @override
  _SimulationResultPageState createState() => _SimulationResultPageState();
}

class _SimulationResultPageState extends State<SimulationResultPage> {
  @override
  Widget build(BuildContext context) {
    Scenario scenario = ScenarioController().getScenario(widget.sid);

    /// catID 바꾸는 부분
    String catID = CatTypeController().getCatID(scenario);
    print('catID: ${CatTypeController().getCatID(scenario)}');

    List<String> descriptionList =
        CatTypeController().getDescriptionList(catID, scenario);

    print('descriptionList.length : ${descriptionList.length}');

    bool isPartnerExist =
        CatTypeController().checkPartnerExist(catID, scenario);
    print('isPartnerExist: $isPartnerExist');

    String bestPartnerID =
        CatTypeController().getBestPartnerID(catID, scenario);

    String worstPartnerID =
        CatTypeController().getWorstPartnerID(catID, scenario);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(47.h),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xffeaf5ff),
          elevation: 0,
          title: Text(
            '모의훈련 결과',
            style: TextStyle(
                color: Color(0xff0b80f5),
                fontWeight: FontWeight.w400,
                fontFamily: "YDIYGO320",
                fontStyle: FontStyle.normal,
                fontSize: 17.0),
          ),
          leading: Container(
            width: 14.w,
            height: 14.h,
            child: TextButton(
              child: Icon(
                Icons.close,
                color: Colors.black,
              ),
              onPressed: () {
                scenario.userActionSequence.clear();
                Get.offAll(HomePage());
              },
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
          ),
          automaticallyImplyLeading: false,
        ),
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 13.h),
            Container(
                alignment: Alignment.bottomCenter,
                height: 48.h,
                width: 74.5.w,
                child: Stack(children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    width: 74.5.w,
                    height: 48.h,
                    child: Container(
                        padding: EdgeInsets.only(bottom: 3.5.h),
                        width: 74.5.w,
                        height: 14.h,
                        decoration:
                            BoxDecoration(color: const Color(0x4faed7ff))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                          '${SimulationResultController().calculateScore(scenario)}',
                          style: TextStyle(
                              color: const Color(0xff0473e1),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Helvetica75",
                              fontStyle: FontStyle.normal,
                              fontSize: 40.sp)),
                      Text('점',
                          style: TextStyle(
                              color: const Color(0xff0473e1),
                              fontWeight: FontWeight.w700,
                              fontFamily: "HancomMalangMalang",
                              fontStyle: FontStyle.normal,
                              fontSize: 19.sp))
                    ],
                  ),
                ])),
            SizedBox(height: 14.h),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15.w, right: 15.w),
                  child: Column(
                    children: [
                      Container(
                        // padding: EdgeInsets.only(left: 15.w, right: 15.w),
                        width: 330.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(CatTypeController().getCatDescriptionType(catID),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "HancomMalangMalang",
                                    // fontStyle:  FontStyle.normal,
                                    fontSize: 20.sp),
                                textAlign: TextAlign.center),
                            Text("은",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "HancomMalangMalang",
                                    // fontStyle:  FontStyle.normal,
                                    fontSize: 20.sp),
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(CatTypeController().getCatName(catID, scenario),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "HancomMalangMalang",
                                  // fontStyle:  FontStyle.normal,
                                  fontSize: 20.sp),
                              textAlign: TextAlign.center),
                          checkExtraWords(catID),
                          Text("군요!",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "HancomMalangMalang",
                                  // fontStyle:  FontStyle.normal,
                                  fontSize: 20.sp),
                              textAlign: TextAlign.center),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 6.8.h),
            Container(
                width: 122.7.w,
                height: 122.7.h,
                child: Image.asset(
                    CatTypeController().getCatImage(catID))),
            // Container(
            //   padding: EdgeInsets.only(
            //       left: 20.w, right: 20.w, top: 30.h, bottom: 30.h),
            //   decoration: BoxDecoration(
            //       border: Border.all(),
            //       borderRadius: BorderRadius.circular(20.sp)),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       for (int i = 0; i < scenario.userActionSequence.length; i++)
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text('${scenario.userActionSequence[i].ua_id}'),
            //             Container(
            //                 padding: EdgeInsets.only(bottom: 10.h),
            //                 child: Text(
            //                     '•${scenario.userActionSequence[i].feedback}')),
            //           ],
            //         ),
            //     ],
            //   ),
            // ),
            SizedBox(height: 28.h),
            Container(
                width: 360.w,
                // height: 85.h,
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 19.h, left: 35.w, right:35.w, bottom: 11.h,),
                decoration: BoxDecoration(color: const Color(0x4faed7ff)),
                child: Text(
                    CatTypeController().getTitleDescription(catID, scenario),
                    style: TextStyle(
                        color: const Color(0xff0473e1),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Recipekorea",
                        fontStyle: FontStyle.normal,
                        fontSize: 19.sp,
                        // CatTypeController()
                        //     .getTitleDescriptionSize(catID, scenario)
                    ),
                    textAlign: TextAlign.left)),
            Container(
                padding: EdgeInsets.only(top: 20.h, left: 35.w, right: 39.w),
                child: Column(children: [
                  for (int i = 0; i < descriptionList.length; i++)
                    Column(
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: 7.h),
                                  Container(
                                      alignment: Alignment.topCenter,
                                      width: 5.w,
                                      height: 5.h,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff0473e1),
                                          shape: BoxShape.circle)),
                                ],
                              ),
                              SizedBox(width: 7.w),
                              Container(
                                width: 274.w,
                                child: Text(descriptionList[i],
                                    style: TextStyle(
                                        color: const Color(0xff000000),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "HancomMalangMalang",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 13.sp),
                                    textAlign: TextAlign.left),
                              )
                            ]),
                        SizedBox(height: 17.h),
                      ],
                    ),
                ])),
            SizedBox(height: 24.h),
            Container(
                padding: EdgeInsets.only(left: 20.w, right: 21.w),
                height: 250.h,
                child: Image.asset(
                    CatTypeController().getExampleScenario(catID, scenario))),
            SizedBox(height: 35.h),
            if (isPartnerExist)
              Container(
                  padding: EdgeInsets.only(left: 20.w, right: 21.w),
                  child: Row(children: [
                    Container(
                        width: 153.w,
                        height: 240.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                            border: Border.all(
                                color: const Color(0xff707070), width: 0.5)),
                        child: Column(
                          children: [
                            SizedBox(height: 17.h),
                            Text("환상의 짝꿍",
                                style: TextStyle(
                                    color: const Color(0xff0473e1),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Recipekorea",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 19.sp),
                                textAlign: TextAlign.left),
                            SizedBox(height: 5.h),
                            Container(
                              width: 122.6.sp,
                              height: 122.6.sp,
                              child: Image.asset(CatTypeController()
                                  .getCatImage(bestPartnerID)),
                            ),
                            SizedBox(height: 17.4.h),
                            Text(
                                CatTypeController()
                                    .getCatExtraDescription(bestPartnerID, scenario),
                                style: TextStyle(
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "HancomMalangMalang",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 13.sp)),
                            Text(
                                CatTypeController()
                                    .getCatName(bestPartnerID, scenario),
                                style: TextStyle(
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "HancomMalangMalang",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 13.sp))
                          ],
                        )),
                    SizedBox(width: 13.w),
                    Container(
                        width: 153.w,
                        height: 240.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                            border: Border.all(
                                color: const Color(0xff707070), width: 0.5)),
                        child: Column(
                          children: [
                            SizedBox(height: 17.h),
                            Text("환장의 케미",
                                style: TextStyle(
                                    color: const Color(0xff0473e1),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Recipekorea",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 19.sp),
                                textAlign: TextAlign.left),
                            SizedBox(height: 5.h),
                            Container(
                              width: 122.6.sp,
                              height: 122.6.sp,
                              child: Image.asset(CatTypeController()
                                  .getCatImage(
                                      CatTypeController()
                                          .getWorstPartnerID(catID, scenario),
                                      )),
                            ),
                            SizedBox(height: 17.4.h),
                            Text(
                                CatTypeController().getCatExtraDescription(
                                    worstPartnerID, scenario),
                                style: TextStyle(
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "HancomMalangMalang",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 13.sp)),
                            Text(
                                CatTypeController()
                                    .getCatName(worstPartnerID, scenario),
                                style: TextStyle(
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "HancomMalangMalang",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 13.sp))
                          ],
                        ))
                  ])),
            SizedBox(height: 85.h),
          ],
        ),
      )),
    );
  }

  checkExtraWords(String catID) {
    List<String> catList = ['cat_3', 'cat_4', 'cat_6', 'cat_8'];
    // 3, 4, 6, 8
    if (catList.contains(catID)) {
      return Text('이', style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontFamily: "HancomMalangMalang",
          // fontStyle:  FontStyle.normal,
          fontSize: 20.sp),
          textAlign: TextAlign.center);
    }
    else{
      return Container();
    }
  }
}
