import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:jewel_bank/Theme/app_theme.dart';
import 'package:jewel_bank/Utils/routing_utils.dart';
import 'package:jewel_bank/Views/Start/start_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      systemNavigationBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark
  ));
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: StartScreen(),
    initialRoute: Routes.start.name,
    getPages:[
      Routes.start,
      Routes.onBoarding,
      Routes.home,
      Routes.createAccount,
      Routes.login,
      Routes.wallet,
      Routes.monetization,
      Routes.profile,
      Routes.support,
      Routes.accountPurchase
    ],
    theme: MyThemeData.themeData,
    defaultTransition: Transition.fade
  ));
}
