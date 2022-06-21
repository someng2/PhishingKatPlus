import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:voskat/presentation/contents_screen.dart';
import 'package:voskat/presentation/contents_view_model.dart';
import 'package:voskat/presentation/home_screen.dart';
import 'package:voskat/view/HomePage.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:voskat/view/Simulation/SimulationPage.dart';
import 'package:voskat/view/customWidget/A1/MaliciousAppDownloadPage.dart';
import 'package:provider/provider.dart';
import 'package:voskat/presentation/home_view_model.dart';

import 'package:voskat/data/repository/board_repository_impl.dart';
import 'package:voskat/data/source/remote/board_api.dart';

import 'data/repository/app_contents_repository_impl.dart';
import 'data/source/remote/appContents_api.dart';

void main() {
  runApp(MyApp());
  // runApp(ChangeNotifierProvider.value(
  //     value:
  //     // HomeViewModel(BoardRepositoryImpl(BoardApi())),
  //     ContentsViewModel(AppContentsRepositoryImpl(AppContentsApi())),
  //     child: MyApp())
  // );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 760),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => GetMaterialApp(
        title: 'Flutter Demo',
        theme: _phishingTheme,
        home: const HomePage(),
        // home: const ContentsScreen(),
        routes: {
          '/home': (context) => HomePage(),
          // '/simulation': (context) => SimulationPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

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
