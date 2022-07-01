// // ignore_for_file: file_names
//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';
// import 'package:voskat/model/simulation/type&age.dart';
// import 'package:voskat/model/user/user.dart';
// import 'package:voskat/tempData/type&ageData.dart';
// import 'package:voskat/tempData/userData.dart';
// import 'package:voskat/view/SignUp/SignUpCompletePage.dart';
// import 'package:voskat/view/customWidget/SignUpTextField.dart';
// import 'package:get/get.dart';
// import 'package:voskat/view/HomePage.dart';
// import 'package:voskat/view/customWidget/customProgressDot.dart';
//
// import 'package:voskat/view/viewModel/user_view_model.dart';
//
// import 'package:voskat/controller/user/user_event.dart';
//
// class SignUpPage_age extends StatefulWidget {
//   const SignUpPage_age({Key? key}) : super(key: key);
//
//   @override
//   _SignUpPage_ageState createState() => _SignUpPage_ageState();
// }
//
// class _SignUpPage_ageState extends State<SignUpPage_age> {
//   bool _maleSelected = true;
//   bool _femaleSelected = false;
//   TextEditingController nickNameController = TextEditingController();
//   DateTime birthYear = DateTime.now();
//   bool _yearSelected = false;
//   List<String> interestList = [
//     '보험',
//     '게임',
//     '택배',
//     '주식',
//     '지원금',
//     '취업',
//     '중고거래',
//     '이성교제',
//     '대출',
//     '알바',
//     '가족',
//     '쇼핑'
//   ];
//
//   List<bool> interestSelected = List.filled(12, false);
//   String gender = '';
//
//   @override
//   Widget build(BuildContext context) {
//     final viewModel = context.watch<UserViewModel>();
//     final state = viewModel.state;
//
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Container(
//         // alignment: Alignment.center,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//               SizedBox(height: 51.h),
//               CustomProgressDot(false),
//               Container(
//                 alignment: Alignment.centerLeft,
//                 padding: EdgeInsets.only(left: 32.6.w, right: 37.4.w),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(height: 27.8.h),
//                     Text(
//                       "보다 정확한 스미싱 훈련 서비스를\n위해 정보를 입력해주세요",
//                       style: TextStyle(
//                           color: const Color(0xff010101),
//                           fontWeight: FontWeight.w700,
//                           fontFamily: "NotoSansCJKKR",
//                           fontStyle: FontStyle.normal,
//                           fontSize: 21.sp),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(height: 26.2.h),
//               Container(
//                   padding: EdgeInsets.only(
//                     left: 25.w,
//                     right: 25.w,
//                   ),
//                   child: Column(children: [
//                     Row(
//                       children: [
//                         Container(
//                             width: 196.w,
//                             height: 52.h,
//                             alignment: Alignment.centerLeft,
//                             decoration: BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(8.sp)),
//                                 border: Border.all(
//                                     width: 1.5.sp, color: Color(0xff0b80f5))),
//                             child: TextButton(
//                               child: Container(
//                                 width: 196.w,
//                                 padding: EdgeInsets.only(left: 0.5.w),
//                                 child: Text(
//                                     _yearSelected
//                                         ? birthYear.year.toString()
//                                         : '출생년도',
//                                     style: TextStyle(
//                                         color: _yearSelected
//                                             ? Colors.black
//                                             : Color(0xffb1aeae),
//                                         fontWeight: FontWeight.w400,
//                                         fontFamily: "NotoSansCJKKR",
//                                         fontStyle: FontStyle.normal,
//                                         fontSize: 16.sp),
//                                     textAlign: TextAlign.left),
//                               ),
//                               onPressed: () {
//                                 showDialog(
//                                   context: context,
//                                   builder: (BuildContext context) {
//                                     return AlertDialog(
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius: BorderRadius.all(
//                                               Radius.circular(10.sp))),
//                                       insetPadding: EdgeInsets.zero,
//                                       contentPadding: EdgeInsets.only(
//                                           left: 15.w,
//                                           right: 15.w,
//                                           top: 10.h,
//                                           bottom: 10.h),
//                                       title: Text(
//                                         "출생년도를 선택해 주세요.",
//                                         // textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                             color: const Color(0xff000000),
//                                             fontWeight: FontWeight.w500,
//                                             fontFamily: "NotoSansCJKKR",
//                                             fontStyle: FontStyle.normal,
//                                             fontSize: 16.sp),
//                                       ),
//                                       content: Container(
//                                         // Need to use container to add size constraint.
//                                         width: 120.w,
//                                         height: 228.h,
//                                         child: YearPicker(
//                                           firstDate: DateTime(
//                                               DateTime.now().year - 100, 1),
//                                           lastDate:
//                                               DateTime(DateTime.now().year),
//                                           initialDate: DateTime(
//                                               DateTime.now().year - 25, 1),
//                                           // save the selected date to _selectedDate DateTime variable.
//                                           // It's used to set the previous selected date when
//                                           // re-showing the dialog.
//                                           selectedDate: birthYear,
//                                           onChanged: (DateTime dateTime) {
//                                             setState(() {
//                                               _yearSelected = true;
//                                               birthYear = dateTime;
//                                             });
//                                             // close the dialog when year is selected.
//                                             Navigator.pop(context);
//
//                                             // Remember that you need to use dateTime.year to get the year
//                                           },
//                                         ),
//                                       ),
//                                       // actions: [
//                                       //   Container(
//                                       //       alignment: Alignment.center,
//                                       //       height: 38.h,
//                                       //       decoration: BoxDecoration(
//                                       //           color: Color(0xff0473e1),
//                                       //           borderRadius:
//                                       //               BorderRadius.circular(
//                                       //                   5.sp)),
//                                       //       child: TextButton(
//                                       //         child: Text('설정',
//                                       //             style: TextStyle(
//                                       //                 color: Colors.white,
//                                       //                 fontFamily:
//                                       //                     "NotoSansCJKKR",
//                                       //                 fontStyle:
//                                       //                     FontStyle.normal,
//                                       //                 fontSize: 15.sp)),
//                                       //         onPressed: () {
//                                       //           Navigator.pop(context);
//                                       //         },
//                                       //       ))
//                                       // ],
//                                     );
//                                   },
//                                 );
//                               },
//                             )),
//                         SizedBox(width: 5.w),
//                         Container(
//                           width: 52.w,
//                           height: 52.h,
//                           decoration: BoxDecoration(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(8.sp)),
//                             border: Border.all(
//                                 color: const Color(0xff0b80f5), width: 1.5),
//                             color: _maleSelected
//                                 ? Color(0xff0b80f5)
//                                 : const Color(0xffffffff),
//                           ),
//                           child: TextButton(
//                             child: Text('남',
//                                 style: TextStyle(
//                                     color: _maleSelected
//                                         ? Color(0xffffffff)
//                                         : Color(0xffb1aeae),
//                                     fontWeight: _maleSelected
//                                         ? FontWeight.w700
//                                         : FontWeight.w400,
//                                     fontFamily: "NotoSansCJKKR",
//                                     fontStyle: FontStyle.normal,
//                                     fontSize: 16.sp)),
//                             onPressed: () {
//                               setState(() {
//                                 _femaleSelected = false;
//                                 _maleSelected = true;
//                                 // print('_maleSelected : $_maleSelected');
//                                 // print('_femaleSelected : $_femaleSelected');
//                               });
//                             },
//                             style: TextButton.styleFrom(
//                               minimumSize: Size.zero,
//                               padding: EdgeInsets.zero,
//                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                             ),
//                           ),
//                         ),
//                         SizedBox(width: 5.w),
//                         Container(
//                           width: 52.w,
//                           height: 52.h,
//                           decoration: BoxDecoration(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(8.sp)),
//                             border: Border.all(
//                                 color: const Color(0xff0b80f5), width: 1.5),
//                             color: _femaleSelected
//                                 ? Color(0xff0b80f5)
//                                 : const Color(0xffffffff),
//                           ),
//                           child: TextButton(
//                             child: Text('여',
//                                 style: TextStyle(
//                                     color: _femaleSelected
//                                         ? Color(0xffffffff)
//                                         : Color(0xffb1aeae),
//                                     fontWeight: _femaleSelected
//                                         ? FontWeight.w700
//                                         : FontWeight.w400,
//                                     fontFamily: "NotoSansCJKKR",
//                                     fontStyle: FontStyle.normal,
//                                     fontSize: 16.sp)),
//                             onPressed: () {
//                               setState(() {
//                                 _maleSelected = false;
//                                 _femaleSelected = true;
//                               });
//                               // print('_maleSelected : $_maleSelected');
//                               // print('_femaleSelected : $_femaleSelected');
//                             },
//                             style: TextButton.styleFrom(
//                               minimumSize: Size.zero,
//                               padding: EdgeInsets.zero,
//                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     SizedBox(height: 5.h),
//                     Row(
//                       children: [
//                         Text("만 14세 이상만 회원으로 가입할 수 있습니다.",
//                             style: TextStyle(
//                                 color: const Color(0xffb1aeae),
//                                 fontWeight: FontWeight.w400,
//                                 fontFamily: "NotoSansCJKKR",
//                                 fontStyle: FontStyle.normal,
//                                 fontSize: 13.sp),
//                             textAlign: TextAlign.left),
//                       ],
//                     ),
//                     SizedBox(height: 15.h),
//                     SignUpTextField(
//                         310.w, 52.h, nickNameController, '별명 (최대 6자)'),
//                   ])),
//               SizedBox(height: 48.h),
//               Container(
//                 padding: EdgeInsets.only(
//                   left: 24.w,
//                   right: 24.w,
//                 ),
//                 child: Column(
//                   children: [
//                     Row(
//                       textBaseline: TextBaseline.alphabetic,
//                       crossAxisAlignment: CrossAxisAlignment.baseline,
//                       children: [
//                         Text("관심사",
//                             style: TextStyle(
//                                 color: const Color(0xff000000),
//                                 fontWeight: FontWeight.w700,
//                                 fontFamily: "NotoSansCJKKR",
//                                 fontStyle: FontStyle.normal,
//                                 fontSize: 16.sp),
//                             textAlign: TextAlign.left),
//                         SizedBox(width: 8.w),
//                         Text("중복선택 가능",
//                             style: TextStyle(
//                                 color: const Color(0xffb1aeae),
//                                 fontWeight: FontWeight.w400,
//                                 fontFamily: "NotoSansCJKKR",
//                                 fontStyle: FontStyle.normal,
//                                 fontSize: 12.5.sp),
//                             textAlign: TextAlign.left)
//                       ],
//                     ),
//                     SizedBox(height: 13.h),
//                     Container(
//                         height: 250.h,
//                         child: GridView.builder(
//                             itemCount: interestList.length,
//                             gridDelegate:
//                                 SliverGridDelegateWithFixedCrossAxisCount(
//                               crossAxisCount: 4, //1 개의 행에 보여줄 item 개수
//                               childAspectRatio: 2.3, //item 의 가로 1, 세로 2 의 비율
//                               mainAxisSpacing: 12.w, //수평 Padding
//                               crossAxisSpacing: 6.h, //수직 Padding
//                             ),
//                             itemBuilder: (BuildContext context, int index) {
//                               return TextButton(
//                                 child: Container(
//                                   width: 69.w,
//                                   height: 30.h,
//                                   // padding: EdgeInsets.only(top: 5.h,),
//                                   alignment: Alignment.center,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.all(
//                                           Radius.circular(15.sp)),
//                                       color: interestSelected[index]
//                                           ? Color(0xff0473e1)
//                                           : Color(0x4ae7e7e7)),
//
//                                   child: Text(
//                                     interestList[index],
//                                     style: TextStyle(
//                                         color: interestSelected[index]
//                                             ? Color(0xffffffff)
//                                             : Color(0xff000000),
//                                         fontWeight: FontWeight.w400,
//                                         fontFamily: "NotoSansCJKKR",
//                                         fontStyle: FontStyle.normal,
//                                         fontSize: 12.5.sp),
//                                   ),
//                                 ),
//                                 onPressed: () {
//                                   setState(() {
//                                     interestSelected[index] =
//                                         !interestSelected[index];
//                                   });
//                                 },
//                                 style: TextButton.styleFrom(
//                                   minimumSize: Size.zero,
//                                   padding: EdgeInsets.zero,
//                                   tapTargetSize:
//                                       MaterialTapTargetSize.shrinkWrap,
//                                 ),
//                               );
//                             }))
//                   ],
//                 ),
//               )
//             ]),
//             Container(
//                 width: 360.w,
//                 height: 60.h,
//                 decoration: BoxDecoration(color: Color(0xff0473e1)),
//                 child: TextButton(
//                   child: Text('확인',
//                       style: TextStyle(
//                           color: Color(0xffffffff),
//                           fontWeight: FontWeight.w400,
//                           fontFamily: "NotoSansCJKKR",
//                           fontStyle: FontStyle.normal,
//                           fontSize: 19.sp)),
//                   onPressed: () {
//                     // print('출생년도: ${birthYear.year}');
//                     int age = DateTime.now().year - birthYear.year + 1;
//                     // print('nickNameController.text: ${nickNameController.text}');
//
//                     print('나이: $age');
//
//                     if (age == 1) {
//                       Get.showSnackbar(const GetSnackBar(
//                         message: '출생년도를 선택해 주세요.',
//                         duration: Duration(seconds: 2),
//                         snackPosition: SnackPosition.BOTTOM,
//                       ));
//                     }
//                     else if (age - 1 < 14) {
//                       Get.showSnackbar(const GetSnackBar(
//                         message: '만 14세 이상만 가입할 수 있습니다.',
//                         duration: Duration(seconds: 2),
//                         snackPosition: SnackPosition.BOTTOM,
//                       ));
//                     } else if (nickNameController.text == '') {
//                       Get.showSnackbar(const GetSnackBar(
//                         message: '별명을 입력해 주세요.',
//                         duration: Duration(seconds: 2),
//                         snackPosition: SnackPosition.BOTTOM,
//                       ));
//                     } else if (nickNameController.text.length > 6) {
//                       Get.showSnackbar(const GetSnackBar(
//                         message: '6자 이내의 별명을 입력해 주세요.',
//                         duration: Duration(seconds: 2),
//                         snackPosition: SnackPosition.BOTTOM,
//                       ));
//                     } else {
//                       print('birthYear : ${birthYear.year}');
//                       print('getAgeGroup => ${getAgeGroup(age).ageGroup}');
//                       print('nickname: ${nickNameController.text}');
//                       if (_femaleSelected) {
//                         gender = 'female';
//                         print('성별: 여');
//                       } else {
//                         gender = 'male';
//                         print('성별: 남');
//                       }
//                       List<String> selectedInterestList =
//                           getInterestList(interestSelected);
//                       for (int i = 0; i < selectedInterestList.length; i++) {
//                         print('$i: ${selectedInterestList[i]}');
//                       }
//
//
//                       // user DB 에 저장
//                       viewModel.onEvent(UserEvent.insertUser(
//                           nickNameController.text, birthYear.year, gender));
//
//                       // Get.to(SignUpCompletePage());
//                     }
//                   },
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
//
//   List<String> getInterestList(List<bool> interestSelected) {
//     List<String> selectedInterestList = [];
//     for (int i = 0; i < interestSelected.length; i++) {
//       if (interestSelected[i]) {
//         selectedInterestList.add(interestList[i]);
//       }
//     }
//
//     return selectedInterestList;
//   }
//
//   TypeNAge getAgeGroup(int age) {
//     TypeNAge _typeNAge = Type10s;
//
//     if (age < 20) {
//       _typeNAge = Type10s;
//     } else if (age < 30) {
//       _typeNAge = Type20s;
//     } else if (age < 40) {
//       _typeNAge = Type30s;
//     } else if (age < 50) {
//       _typeNAge = Type40s;
//     } else if (age < 60) {
//       _typeNAge = Type50s;
//     } else if (age >= 61) {
//       _typeNAge = Type60s;
//     }
//
//     return _typeNAge;
//   }
// }
