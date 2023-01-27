import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewel_bank/Controllers/Onboarding/onboarding_controller.dart';
import 'package:jewel_bank/Models/Onboarding/onboarding_model.dart';
import 'package:jewel_bank/Utils/colors_utils.dart';
import 'package:jewel_bank/Utils/routing_utils.dart';
import 'package:jewel_bank/Widgets/buttons.dart';
import 'package:jewel_bank/gen/assets.gen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.put(OnboardingController());
    final data = OnboardingData.data;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: Get.width,
          decoration: const BoxDecoration(
            color: MyColors.darkSurface,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GetBuilder<OnboardingController>(
                        init: OnboardingController(),
                        builder: (controller) {
                          return TextButton(
                              onPressed: () => Get.toNamed(Routes.home.name),
                              child: controller.page.value == 0
                                  ? TextButton(
                                      onPressed: () =>
                                          Get.toNamed(Routes.home.name),
                                      child: Text('Skip',
                                          style: Get.textTheme.bodyText2!
                                              .copyWith(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  color: MyColors.blueTextColor,
                                                  fontWeight: FontWeight.w700)))
                                  : TextButton(
                                      child: Text('Create account',
                                          style: Get.textTheme.bodyText2!
                                              .copyWith(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  color: MyColors
                                                      .pinkTextButtonColor,
                                                  fontWeight: FontWeight.w700)),
                                      onPressed: () => Get.toNamed(
                                          Routes.createAccount.name),
                                    ));
                        })
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 100, right: 0),
                    height: 268,
                    width: 170,
                    child: PageView(
                        controller: controller.pageController,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (value) {
                          controller.page.value = value;
                          controller.update();
                        },
                        children: [
                          Assets.img.onboarding.onboarding1
                              .image(height: 268, width: 170),
                          Assets.img.onboarding.onboarding2
                              .image(height: 268, width: 170)
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 43, right: 50),
                    child: SmoothPageIndicator(
                        controller: controller.pageController,
                        axisDirection: Axis.vertical,
                        effect: ExpandingDotsEffect(
                            dotColor: Colors.white.withOpacity(0.2),
                            activeDotColor: const Color(0xffFF3A79),
                            dotHeight: 6,
                            dotWidth: 6,
                            expansionFactor: 5,
                            spacing: 13),
                        count: 2),
                  )
                ],
              ),
              SizedBox(height: 79),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Obx(
                        () => Text(
                          controller.page.value == 0
                              ? data[controller.page.value].title
                              : data[controller.page.value].title,
                          textAlign: TextAlign.center,
                          style: Get.theme.textTheme.headline6!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              height: 1.1,
                              fontSize: 22),
                        ),
                      ),
                      const SizedBox(height: 21),
                      Obx(() => Text(
                            controller.page.value == 0
                                ? data[controller.page.value].description
                                : data[controller.page.value].description,
                            textAlign: TextAlign.center,
                            style: Get.theme.textTheme.bodyText2!
                                .copyWith(height: 1.6),
                          )),
                    ],
                  )),
              Obx(
                () => SizedBox(height: controller.page == 0.obs ? 79 : 56),
              ),
              Obx(() => controller.page.value == 0
                  ? MyElevatedButton(
                      onPressed: () {
                        controller.page.value = controller.page.value + 1;
                        controller.pageController.animateToPage(1,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.ease);
                      },
                      text: 'Next',
                      icon: true,
                      gradientBeginColor: MyColors.purpleGradientBegin,
                      gradientEndColor: MyColors.purpleGradientEnd)
                  : MyElevatedButton(
                      onPressed: () => Get.toNamed(Routes.login.name),
                      text: 'Login',
                      icon: true,
                      gradientBeginColor: MyColors.greenGradientBegin,
                      gradientEndColor: MyColors.greenGradientEnd))
            ],
          ),
        ),
      ),
    );
  }
}
