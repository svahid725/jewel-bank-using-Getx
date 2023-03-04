import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewel_bank/Controllers/Onboarding/onboarding_controller.dart';
import 'package:jewel_bank/Models/Onboarding/onboarding_model.dart';
import 'package:jewel_bank/Utils/colors_utils.dart';
import 'package:jewel_bank/Utils/routing_utils.dart';
import 'package:jewel_bank/Widgets/buttons.dart';
import 'package:jewel_bank/gen/assets.gen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  final OnboardingController controller = Get.put(OnboardingController());

  OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = OnboardingData.data;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: Get.height,
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
                    GetBuilder(
                      init: controller,
                      builder: (_) {
                        return AnimatedSwitcher(
                          duration: const Duration(milliseconds: 150),
                          child: controller.page.value == 0
                              ? Material(
                                  type: MaterialType.transparency,
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.toNamed(RouteUtils.home.name);
                                    },
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 64,
                                        ),
                                        Text(
                                          'Skip',
                                          style:
                                              Get.textTheme.bodyText2!.copyWith(
                                            color: MyColors.blueTextColor,
                                            fontWeight: FontWeight.w700,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    Get.toNamed(
                                      RouteUtils.createAccount.name,
                                    );
                                  },
                                  child: Text(
                                    'Create account',
                                    style: Get.textTheme.bodyText2!.copyWith(
                                      decoration: TextDecoration.underline,
                                      color: MyColors.pinkTextButtonColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Get.height / 3,
                    width: Get.width / 2,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.bottomRight,
                      children: [
                        PageView(
                          controller: controller.pageController,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (value) {
                            controller.page.value = value;
                            controller.update();
                          },
                          children: [
                            Assets.img.onboarding.onboarding1.image(
                              height: Get.height / 3,
                              width: Get.width / 2,
                            ),
                            Assets.img.onboarding.onboarding2.image(
                              height: Get.height / 3,
                              width: Get.width / 2,
                            )
                          ],
                        ),
                        Positioned(
                          right: -24,
                          bottom: -24,
                          child: SmoothPageIndicator(
                            controller: controller.pageController,
                            axisDirection: Axis.vertical,
                            effect: ExpandingDotsEffect(
                              dotColor: Colors.white.withOpacity(0.2),
                              activeDotColor: const Color(0xffFF3A79),
                              dotHeight: 6,
                              dotWidth: 6,
                              expansionFactor: 5,
                              spacing: 13,
                            ),
                            count: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height / 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Obx(
                      () => Text(
                        data[controller.page.value].title,
                        textAlign: TextAlign.center,
                        style: Get.theme.textTheme.headline6!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            height: 1.1,
                            fontSize: 22),
                      ),
                    ),
                    const SizedBox(height: 21),
                    Obx(
                      () => Text(
                        data[controller.page.value].description,
                        textAlign: TextAlign.center,
                        style: Get.theme.textTheme.bodyText2!.copyWith(
                          height: 1.6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Obx(
                () => AnimatedSwitcher(
                  duration: const Duration(milliseconds: 150),
                  child: controller.page.value == 0
                      ? Center(
                        child: MyElevatedButton(
                            onPressed: () {
                              controller.page.value = controller.page.value + 1;
                              controller.pageController.animateToPage(1,
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.ease);
                            },
                            text: 'Next',
                            icon: true,
                            gradientBeginColor: MyColors.purpleGradientBegin,
                            gradientEndColor: MyColors.purpleGradientEnd,
                          ),
                      )
                      : MyElevatedButton(
                          onPressed: () => Get.toNamed(RouteUtils.login.name),
                          text: 'Login',
                          icon: true,
                          gradientBeginColor: MyColors.greenGradientBegin,
                          gradientEndColor: MyColors.greenGradientEnd,
                        ),
                ),
              ),
              SizedBox(
                height: Get.height / 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
