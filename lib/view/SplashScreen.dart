import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:PhishingKatPlus/view/HomePage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:PhishingKatPlus/view/SignUp/LaunchPage.dart';
import 'package:PhishingKatPlus/view/SignUp/PhoneVerificationPage.dart';
import 'package:PhishingKatPlus/model/globals.dart' as globals;
import 'package:PhishingKatPlus/view/viewModel/user_view_model.dart';

import '../controller/user/UserController.dart';
import '../controller/user/user_state.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 1500), () {
      // readToken();
    });
  }

  final token_storage = FlutterSecureStorage();
  final user_storage = FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<UserViewModel>();
    final state = viewModel.state;

    readToken(state);
    readUser();

    return Scaffold(
        backgroundColor: Color(0xff0473e1),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(children: [
              SizedBox(height: 202.8.h),
              Text("스미싱 모의훈련 서비스",
                  style: TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontFamily: "yspotlight",
                      fontStyle: FontStyle.normal,
                      fontSize: 19.sp),
                  textAlign: TextAlign.center),
              Text("피싱캣+",
                  style: TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontFamily: "yspotlight",
                      fontStyle: FontStyle.normal,
                      fontSize: 56.sp),
                  textAlign: TextAlign.center),
            ]),
          ),
        ));
  }

  readToken(UserState state) async {
    // await token_storage.delete(key: "userToken");
    // await token_storage.delete(key: "userTokenCreatedTime");

    String? userToken = await token_storage.read(key: "userToken");

    // userToken 없을 경우, 회원가입 페이지로 이동
    if (userToken == null) {
      print('[readToken() ] userToken == null');
      Timer(Duration(milliseconds: 1500), () {
        Get.to(LaunchPage());
      });
    } else {
      bool _tokenExpired = await isTokenExpired();
      if (_tokenExpired) {
        print('Token is expired!');
        await token_storage.delete(key: "userToken");
        await token_storage.delete(key: "userTokenCreatedTime");
        Timer(Duration(milliseconds: 1500), () {
          Get.to(PhoneVerificationPage(firstLogin: false));
        });
      } else {
        print('[readToken() ] userToken: $userToken');

        globals.userDB = state.userDB;
        globals.uid = UserController().getUserId(state.userDB, userToken);
        print('globals.uid = ${globals.uid}');
        Timer(Duration(milliseconds: 1500), () {
          Get.to(HomePage());
        });
      }
    }
  }

  isTokenExpired() async {
    bool result = false;

    String? creationTime =
        await token_storage.read(key: "userTokenCreatedTime");

    if (creationTime == null) {
      result = true;
      return result;
    }
    print('[isTokenExpired() ] creationTime = $creationTime');

    var current = DateTime.now();
    print('[isTokenExpired() ] current time = $current');

    int difference = int.parse(
        current.difference(DateTime.parse(creationTime)).inDays.toString());

    print('difference: $difference');

    if (difference >= 30) {
      result = true;
    }

    return result;
  }

  readUser() async {
    String? nickname =
    await user_storage.read(key: "nickname");

    if (nickname != null) {
      globals.nickname = nickname;
    }
  }
}
