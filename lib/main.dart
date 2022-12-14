import 'package:class_builder/class_builder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:PhishingKatPlus/controller/user/simulation_result_repository_impl.dart';
import 'package:PhishingKatPlus/view/HomePage.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:PhishingKatPlus/view/SplashScreen.dart';
import 'package:PhishingKatPlus/view/viewModel/notice_view_model.dart';
import 'package:PhishingKatPlus/view/viewModel/simulation_result_view_model.dart';
import 'package:PhishingKatPlus/view/viewModel/user_view_model.dart';
import 'package:PhishingKatPlus/controller/user/simulation_result_api.dart';
import 'package:PhishingKatPlus/controller/Etc./notice_api.dart';
import 'package:PhishingKatPlus/controller/Etc./notice_repository_impl.dart';
import 'package:PhishingKatPlus/controller/user/user_api.dart';
import 'package:PhishingKatPlus/controller/user/user_repository_impl.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<SimulationResultViewModel>(
          create: (context) => SimulationResultViewModel(
              SimulationResultRepositoryImpl(SimulationResultApi())),
        ),
        ChangeNotifierProvider<UserViewModel>(
          create: (context) => UserViewModel(UserRepositoryImpl(UserApi())),
        ),
        ChangeNotifierProvider<NoticeViewModel>(
          create: (context) =>
              NoticeViewModel(NoticeRepositoryImpl(NoticeApi())),
        ),
      ],
      child: MyApp(),
    ),
    // MyApp()
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return FutureBuilder(
    //     future: Init.instance.initialize(context),
    //     builder: (context, AsyncSnapshot snapshot) {
    //       if (snapshot.connectionState == ConnectionState.waiting) {
    //         return SplashScreen(); // ?????? ?????? ??? Splash Screen
    //       } else if (snapshot.hasError) {
    //         // TODO: ?????? ????????? ??????
    //         // return MaterialApp(home: ErrorScreen()); // ?????? ?????? ?????? ??? Error Screen
    //         return Scaffold(body: Container(child: Text('error screen')));
    //       } else {

    return ScreenUtilInit(
      designSize: Size(360, 760),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        title: 'PhishingKat Plus',
        theme: _phishingTheme,
        home: SplashScreen(),
        // snapshot.data, // ?????? ?????? ??? Home Screen
        routes: {
          // '/home': (context) => HomePage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
    // }
    // }
    // );
  }
}

// class Init {
//   Init._();
//   static final instance = Init._();
//
//   Future<Widget?> initialize(BuildContext context) async {
//     await Future.delayed(Duration(milliseconds: 1000));
//
//     // . . .
//     // ?????? ?????? ??????
//     // . . .
//
//     return HomePage(); // ?????? ?????? ?????? ??? ?????? ??? ??? ??????
//   }
// }

final ThemeData _phishingTheme = _buildSimulkatTheme();

ThemeData _buildSimulkatTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    primaryColor: Colors.black,
    appBarTheme: AppBarTheme(
        backgroundColor: Color(0xffffffff),
        // color: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 15.sp)),
    textButtonTheme: TextButtonThemeData(style: flatButtonStyle),
  );
}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    // primary: Colors.black,
    textStyle: TextStyle(color: Colors.black));
