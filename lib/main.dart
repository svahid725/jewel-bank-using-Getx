import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:jewel_bank/Theme/app_theme.dart';
import 'package:jewel_bank/Utils/routing_utils.dart';
import 'package:jewel_bank/Views/Start/start_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark),
  );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
      initialRoute: RouteUtils.start.name,
      getPages: [
        RouteUtils.start,
        RouteUtils.onBoarding,
        RouteUtils.home,
        RouteUtils.createAccount,
        RouteUtils.login,
        RouteUtils.wallet,
        RouteUtils.monetization,
        RouteUtils.profile,
        RouteUtils.support,
        RouteUtils.accountPurchase
      ],
      theme: MyThemeData.themeData,
      defaultTransition: Transition.fade,
    ),
  );
}
