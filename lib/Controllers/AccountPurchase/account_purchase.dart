
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AccountPurchaseController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xff1C162E),
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Color(0xff1C162E)
    ));
  }
  @override
  void onClose() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness:  Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      statusBarColor: Color(0xffffffff),
      systemNavigationBarColor:Color(0xffffffff)


    ));
    super.onClose();
  }
}