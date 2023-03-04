import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewel_bank/Controllers/Start/start_screen_controller.dart';
import 'package:jewel_bank/Utils/colors_utils.dart';
import 'package:jewel_bank/Utils/routing_utils.dart';
import 'package:jewel_bank/Widgets/buttons.dart';

class StartScreen extends StatelessWidget {
  final StartScreenController controller = Get.put(StartScreenController());

  StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'welcome to',
                      style: Get.theme.textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Jewel Bank',
                      style: Get.theme.textTheme.headline6!.copyWith(
                        fontSize: 28,
                        color: MyColors.lightGreenTextColor,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      'App that will help you to',
                      style: Get.theme.textTheme.bodyText2!.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'properly manage your',
                      style: Get.theme.textTheme.bodyText2!.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'finances',
                      style: Get.theme.textTheme.bodyText2!.copyWith(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: Get.width,
              height: 200,
              decoration: const BoxDecoration(
                color: MyColors.darkSurface,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(18),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Center(
                child: MyElevatedButton(
                  onPressed: () {
                    Get.offAndToNamed(RouteUtils.onBoarding.name);
                    controller.dispose();
                  },
                  text: 'Let\'s started',
                  icon: false,
                  gradientBeginColor: MyColors.greenGradientBegin,
                  gradientEndColor: MyColors.greenGradientEnd,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
