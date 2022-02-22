import 'package:flutter/material.dart';
import 'package:voskat/view/HomePage.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view/Simulation/SimulationPage.dart';
import 'customWidget/A2/A2bPage.dart';
import 'tempData/acitonData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 760),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => GetMaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                appBarTheme: AppBarTheme(
                  color: Colors.white,
                    iconTheme: IconThemeData(
                        color: Colors.black
                    )
                ),
              ),
              home: const HomePage(),
              routes: {
                '/simulation': (context) => SimulationPage(),
                '/A2b': (context) => A2bPage()
              },
              debugShowCheckedModeBanner: false,
            ));
  }
}
