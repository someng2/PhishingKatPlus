import 'package:class_builder/class_builder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:voskat/controller/board_api.dart';
import 'package:voskat/controller/board_repository_impl.dart';
import 'package:voskat/controller/user/simulation_result_repository_impl.dart';
import 'package:voskat/view/HomePage.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:voskat/view/Simulation/SimulationPage.dart';
import 'package:voskat/view/simulationResultDBTest.dart';
import 'package:voskat/view/userDBTest.dart';
import 'package:voskat/view/customWidget/A1/MaliciousAppDownloadPage.dart';
import 'package:voskat/view/viewModel/simulation_result_view_model.dart';
import 'package:voskat/view/viewModel/user_view_model.dart';
import 'package:voskat/controller/user/simulation_result_api.dart';
import 'controller/user/user_api.dart';
import 'controller/user/user_repository_impl.dart';

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
          lazy: true,
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
    return ScreenUtilInit(
      designSize: Size(360, 760),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        title: 'Flutter Demo',
        theme: _phishingTheme,
        home: const HomePage(),
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
