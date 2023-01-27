import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewel_bank/Controllers/CreateAccount/create_account_controller.dart';
import 'package:jewel_bank/Utils/colors_utils.dart';
import 'package:jewel_bank/Utils/routing_utils.dart';
import 'package:jewel_bank/Widgets/buttons.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CreateAccountController controller =
        Get.put(CreateAccountController());
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: Get.width,
          height: Get.height,
          decoration: const BoxDecoration(
            color: MyColors.darkSurface,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(38, 30, 38, 100),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create account',
                    style: Get.theme.textTheme.bodyText1!.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 53),
                  // email
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: MyColors.onDarkBackground),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 4),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: const InputDecoration(
                                      hintText: 'Email',
                                      hintStyle: TextStyle(
                                          color: MyColors.grayTextColor30),
                                      border: InputBorder.none),
                                  onChanged: (value) {
                                    controller.emailTextController.text.isEmpty
                                        ? controller.emailHasText.value = false
                                        : controller.emailHasText.value = true;
                                    controller.update();
                                  },
                                  controller: controller.emailTextController,
                                  style: Get.theme.textTheme.bodyText2!.copyWith(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                              Obx(() => controller.emailHasText.isTrue
                                  ? MySuffixIcon(
                                      onTap: () {
                                        controller.emailTextController.text = '';
                                        controller.emailHasText.value = false;
                                        controller.update();
                                      },
                                      icon: const Icon(
                                        Icons.close,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                      gradientBeginColor:
                                          MyColors.pinkGradientBegin,
                                      gradientEndColor: MyColors.pinkGradientEnd,
                                    )
                                  : Container())
                            ],
                          ),
                          GetBuilder(
                            builder: (controller) {
                              return controller.emailTextController.text
                                      .contains('dem@')
                                  ? Row(
                                      children: [
                                        Text(
                                          'Do you mean: ',
                                          style: Get.theme.textTheme.caption!
                                              .apply(
                                                  color: MyColors.grayTextColor30),
                                        ),
                                        Text(
                                          'demo@richroom.app',
                                          style: Get.theme.textTheme.caption!
                                              .copyWith(
                                                  color: MyColors.emailTextColor,
                                                  decoration:
                                                      TextDecoration.underline),
                                        ),
                                      ],
                                    )
                                  : Container();
                            },
                            init: CreateAccountController(),
                          )
                        ],
                      ),
                    ),
                  ),
                  // password
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
                          Expanded(child: Obx(
                            () {
                              return TextField(
                                decoration: const InputDecoration(
                                    hintText: 'Password',
                                    hintStyle:
                                        TextStyle(color: MyColors.grayTextColor30),
                                    border: InputBorder.none),
                                obscureText: controller.passwordHide.value,
                                onChanged: (value) {
                                  controller.passwordTextController.text.isEmpty
                                      ? controller.passwordHasText.value = false
                                      : controller.passwordHasText.value = true;
                                  controller.update();
                                },
                                controller: controller.passwordTextController,
                                style: Get.theme.textTheme.bodyText2!
                                    .copyWith(color: Colors.white, fontSize: 14),
                              );
                            },
                          )),
                          Obx(
                            () => controller.passwordHasText.isTrue
                                ? InkWell(
                                    onTap: () {
                                      controller.passwordHide.isFalse
                                          ? controller.passwordHide.value = true
                                          : controller.passwordHide.value = false;
                                      controller.update();
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(right: 20),
                                      alignment: Alignment.center,
                                      height: 22,
                                      width: 46,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff49435E),
                                          borderRadius: BorderRadius.circular(6)),
                                      child: Text(
                                        controller.passwordHide.value
                                            ? 'SHOW'
                                            : 'HIDE',
                                        style:
                                            const TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )
                                : Container(),
                          )
                        ],
                      ),
                    ),
                  ),
                  // mobile number
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
                                  hintText: 'Number',
                                  hintStyle:
                                      TextStyle(color: MyColors.grayTextColor30),
                                  border: InputBorder.none),
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                if (controller.numberTextController.text.length ==
                                    10) {
                                  controller.mobileIsValid.value = true;
                                } else {
                                  controller.mobileIsValid.value = false;
                                }
                              },
                              controller: controller.numberTextController,
                              style: Get.theme.textTheme.bodyText2!
                                  .copyWith(color: Colors.white, fontSize: 14),
                            ),
                          ),
                          Obx(
                            () => controller.mobileIsValid.isTrue
                                ? MySuffixIcon(
                                    onTap: (){},
                                    icon: const Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                    gradientBeginColor:
                                        MyColors.greenGradientBegin,
                                    gradientEndColor: MyColors.greenGradientEnd)
                                : Container(),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 39),
                  Center(
                    child: MyElevatedButton(
                        onPressed: ()=> Get.toNamed(Routes.login.name),
                        text: 'Create',
                        icon: true,
                        gradientBeginColor: MyColors.orangeGradientBegin,
                        gradientEndColor: MyColors.orangeGradientEnd),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
