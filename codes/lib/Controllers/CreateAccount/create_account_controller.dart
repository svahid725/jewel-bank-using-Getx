import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateAccountController extends GetxController{
final RxBool emailHasText = false.obs;
final RxBool passwordHasText = false.obs;
final RxBool passwordHide = false.obs;
final RxBool mobileIsValid = false.obs;
final TextEditingController emailTextController = TextEditingController();
final TextEditingController passwordTextController = TextEditingController();
final TextEditingController numberTextController = TextEditingController();
}