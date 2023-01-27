import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewel_bank/Controllers/Home/home_controller.dart';
import 'package:jewel_bank/Utils/colors_utils.dart';
import 'package:jewel_bank/Utils/routing_utils.dart';
import 'package:jewel_bank/gen/assets.gen.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 43),
      width: Get.width,
      height: 64,
      decoration:
          const BoxDecoration(color: MyColors.bottomNavigationBackground),
      child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              controller.isSelected.value == 1
                  ? Container(
                    width: 88,
                    height: 42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(colors: [
                          MyColors.purpleGradientBegin,
                          MyColors.purpleGradientEnd,
                        ])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.img.home.homeIcon.image(
                            height: 15, width: 15, color: Colors.white),
                        SizedBox(width: 7),
                        Text(
                          'Home',
                          style: Get.theme.textTheme.bodyText2!.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    ),
                  )
                  : InkWell(
                      onTap: () {
                        controller.isSelected.value = 1;
                        Get.toNamed(Routes.home.name);
                      },
                      child: Assets.img.home.homeIcon
                          .image(height: 15, width: 15)),
              controller.isSelected.value == 2
                  ? Container(
                    width: 110,
                    height: 42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(colors: [
                          MyColors.purpleGradientBegin,
                          MyColors.purpleGradientEnd,
                        ])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.img.home.boardIcon.image(
                            height: 15, width: 15, color: Colors.white),
                        SizedBox(width: 7),
                        Text(
                          'Monetization',
                          style: Get.theme.textTheme.bodyText2!.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    ),
                  )
                  : InkWell(
                      onTap: () {
                        controller.isSelected.value = 2;
                        Get.toNamed(Routes.monetization.name);
                      },
                      child: Assets.img.home.boardIcon
                          .image(height: 15, width: 15)),
              controller.isSelected.value == 3
                  ? Container(
                    width: 88,
                    height: 42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(colors: [
                          MyColors.purpleGradientBegin,
                          MyColors.purpleGradientEnd,
                        ])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.img.home.serviceIcon.image(
                            height: 15, width: 15, color: Colors.white),
                        SizedBox(width: 7),
                        Text(
                          'Wallet',
                          style: Get.theme.textTheme.bodyText2!.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    ),
                  )
                  : InkWell(
                      onTap: () {
                        controller.isSelected.value = 3;
                        Get.toNamed(Routes.wallet.name);
                      },
                      child: Assets.img.home.serviceIcon
                          .image(height: 15, width: 15)),
              controller.isSelected.value == 4
                  ? Container(
                    width: 88,
                    height: 42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(colors: [
                          MyColors.purpleGradientBegin,
                          MyColors.purpleGradientEnd,
                        ])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_outline,
                          size: 18,
                          color: Color(0xffE0E0E0),
                        ),
                        SizedBox(width: 7),
                        Text(
                          'Profile',
                          style: Get.theme.textTheme.bodyText2!.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    ),
                  )
                  : InkWell(
                      onTap: () {
                        controller.isSelected.value =4;
                        Get.toNamed(Routes.profile.name);
                      },
                      child: Icon(
                        Icons.person_outline,
                        size: 18,
                        color: Color(0xffE0E0E0),
                      )),
            ],
          )),
    );
  }
}
// Assets.img.home.boardIcon.image(height: 13, width: 13),
// Assets.img.home.serviceIcon.image(height: 13, width: 13),
// Icon(
// Icons.person_outline,
// size: 13,
// )
