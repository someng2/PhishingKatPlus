import 'package:class_builder/class_builder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:voskat/controller/board_api.dart';
import 'package:voskat/controller/board_repository_impl.dart';
import 'package:voskat/view/HomePage.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:voskat/view/Simulation/SimulationPage.dart';
import 'package:voskat/view/viewModel/appContents_view_model.dart';
import 'package:voskat/view/customWidget/A1/MaliciousAppDownloadPage.dart';


void main() {
  runApp(
      ChangeNotifierProvider.value(
        value: AppContentsViewModel(BoardRepositoryImpl(BoardApi())),
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
    return ScreenUtilInit(
        designSize: Size(360, 760),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => GetMaterialApp(
              title: 'Flutter Demo',
              theme: _phishingTheme,
              home: const HomePage(),
          // home: const DBTest(),
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

