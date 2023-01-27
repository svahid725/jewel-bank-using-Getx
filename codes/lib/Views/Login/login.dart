import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewel_bank/Controllers/Login/login_controller.dart';
import 'package:jewel_bank/Utils/colors_utils.dart';
import 'package:jewel_bank/Utils/routing_utils.dart';
import 'package:jewel_bank/Widgets/buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: MyColors.darkSurface),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(38, 30, 38, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Login',
                      style: Get.theme.textTheme.bodyText1!
                          .copyWith(color: Colors.white, fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text('Create Demo',
                            style: Get.theme.textTheme.bodyText1!.copyWith(
                                decoration: TextDecoration.underline,
                                color: MyColors.pinkTextButtonColor,
                                fontSize: 16)))
                  ],
                ),
                // email box
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  margin: const EdgeInsets.only(top: 20),
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: MyColors.onDarkBackground),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                                hintText: 'Email',
                                hintStyle:
                                    TextStyle(color: MyColors.grayTextColor30),
                                border: InputBorder.none),
                            onChanged: (value) {
                              controller.emailController.text ==
                                      'demo@richroom.app'
                                  ? controller.validIsEmail.value = true
                                  : controller.validIsEmail.value = false;
                            },
                            controller: controller.emailController,
                            style: Get.theme.textTheme.bodyText2!
                                .copyWith(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        Obx(
                          () => controller.validIsEmail.isTrue
                              ? MySuffixIcon(
                                  onTap: () {},
                                  icon: const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  ),
                                  gradientBeginColor: MyColors.greenGradientBegin,
                                  gradientEndColor: MyColors.greenGradientEnd)
                              : Container(),
                        )
                      ],
                    ),
                  ),
                ),
                // password box
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  margin: const EdgeInsets.only(top: 20),
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: MyColors.onDarkBackground),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                                hintText: 'Password',
                                hintStyle:
                                    TextStyle(color: MyColors.grayTextColor30),
                                border: InputBorder.none),
                            onChanged: (value) {
                              controller.emailController.text ==
                                      'demo@richroom.app'
                                  ? controller.validIsEmail.value = true
                                  : controller.validIsEmail.value = false;
                            },
                            controller: controller.emailController,
                            style: Get.theme.textTheme.bodyText2!
                                .copyWith(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'FORGOT',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: MyColors.blueTextColor),
                            ))
                      ],
                    ),
                  ),
                ),
                // remember me
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 10),
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          shape: BoxShape.rectangle,
                          color: Colors.white.withOpacity(0.8)),
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            shape: BoxShape.rectangle,
                            color: MyColors.darkSurface),
                      ),
                    ),
                    Text(
                      'Auto login ',
                      style: Get.theme.textTheme.bodyText2!.copyWith(
                          color: Colors.white.withOpacity(0.8),
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'next time.',
                      style: Get.theme.textTheme.bodyText2!
                          .copyWith(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                SizedBox(height: 90),
                MyElevatedButton(
                    onPressed: ()=> Get.toNamed(Routes.home.name),
                    text: 'Login',
                    icon: true,
                    gradientBeginColor: MyColors.greenGradientBegin,
                    gradientEndColor: MyColors.greenGradientEnd)
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
