// // ignore_for_file: file_names
//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:voskat/controller/appContentsControllerDB.dart';
// import 'package:voskat/model/simulation/appContentsDB.dart';
//
// class DBTest extends StatefulWidget {
//   const DBTest({Key? key}) : super(key: key);
//
//   @override
//   _DBTestState createState() => _DBTestState();
// }
//
// class _DBTestState extends State<DBTest> {
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: PreferredSize(
//           preferredSize: Size.fromHeight(46.5.h),
//           child: AppBar(
//             titleSpacing: 0,
//             title: Container(
//               child: Row(
//                 // mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     padding: EdgeInsets.only(left: 118.w, top: 11.5.h),
//                     child: Text(
//                       "PhishingKat",
//                       style: TextStyle(
//                           color: const Color(0xff000000),
//                           fontWeight: FontWeight.w700,
//                           fontFamily: "designhouse",
//                           fontStyle: FontStyle.normal,
//                           fontSize: 23.sp),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(bottom: 20.5.h),
//                     child: Text('+',
//                         style: const TextStyle(
//                             color: const Color(0xff000000),
//                             fontWeight: FontWeight.w400,
//                             fontFamily: "SegoeUI",
//                             fontStyle: FontStyle.normal,
//                             fontSize: 20.0),
//                         textAlign: TextAlign.left),
//                   )
//                 ],
//               ),
//             ),
//             actions: [
//               Container(
//                 padding: EdgeInsets.only(right: 12.w, top: 7.5.h, bottom: 10.h),
//                 child: TextButton(
//                   child: Image.asset(
//                     'image/bellIcon.png',
//                     // color: const Color(0xff898686),
//                     color: Colors.black,
//                   ),
//                   onPressed: () {},
//                   style: TextButton.styleFrom(
//                     minimumSize: Size.zero,
//                     padding: EdgeInsets.zero,
//                     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                   ),
//                 ),
//               ),
//             ],
//             centerTitle: true,
//             elevation: 0.0,
//             backgroundColor: Colors.white,
//             shape: Border(
//                 bottom: BorderSide(color: Color(0xffe7e7e7), width: 2.h)),
//           ),
//         ),
//         body: Container(
//             padding: EdgeInsets.only(left: 25.w, right: 24.w),
//             child:
//                 Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//               TextButton(
//                 onPressed: () {
//                   print('length${AppContentsControllerDB.getContents()}');
//                 },
//                 child: Text(
//                   "getContents()",
//                   style: TextStyle(
//                       color: const Color(0xff000000),
//                       fontWeight: FontWeight.w700,
//                       fontFamily: "designhouse",
//                       fontStyle: FontStyle.normal,
//                       fontSize: 23.sp),
//                 ),
//               ),
//               SizedBox(height: 20.h),
//               TextButton(
//                 onPressed: () {
//                   AppContentsControllerDB.addContents(
//                       'ac_121',
//                       'A0-a',
//                       'A2-a',
//                       0,
//                       'button',
//                       'test',
//                       false,
//                       DateTime.now(),
//                       DateTime.now());
//                 },
//                 child: Text(
//                   "addContents()",
//                   style: TextStyle(
//                       color: const Color(0xff000000),
//                       fontWeight: FontWeight.w700,
//                       fontFamily: "designhouse",
//                       fontStyle: FontStyle.normal,
//                       fontSize: 23.sp),
//                 ),
//               ),
//             ])));
//   }
// }
