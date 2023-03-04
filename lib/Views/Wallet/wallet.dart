import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewel_bank/Controllers/Wallet/wallet_controller.dart';
import 'package:jewel_bank/Utils/colors_utils.dart';
import 'package:jewel_bank/Widgets/bottom_nav_bar.dart';
import 'package:jewel_bank/gen/assets.gen.dart';

class WalletScreen extends StatelessWidget {
  final WalletScreenController controller = Get.put(WalletScreenController());

  WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: MyColors.backgroundColor,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Wallet',
                  style: Get.theme.textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: MyColors.primaryTextColor)),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.barcode_viewfinder,
                  color: MyColors.primaryTextColor,
                ),
              )
            ],
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.text_alignleft,
              size: 22,
              color: MyColors.primaryTextColor,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wallet',
                        style: Get.theme.textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: MyColors.primaryTextColor,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '3  card, 2 Crypto wallet',
                        style: Get.theme.textTheme.headline6!.copyWith(
                          color: MyColors.primaryTextColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 28),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 28,
                              width: 59,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                gradient: const LinearGradient(
                                  colors: [
                                    MyColors.purpleGradientBegin,
                                    MyColors.purpleGradientEnd
                                  ],
                                ),
                              ),
                              child: Text(
                                'Card',
                                style: Get.theme.textTheme.bodyText2!.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              'Add Wallet',
                              style: Get.theme.textTheme.bodyText2!.copyWith(
                                color: MyColors.secondaryGrayTextColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
              Container(
                width: Get.width,
                height: Get.height / 3.8,
                child: PageView(
                  onPageChanged: (int page) {
                    controller.currentPage.value = page;
                  },

                  controller: PageController(
                    viewportFraction: 0.75,
                  ),
                  children: controller.cards
                      .map((e) => buildCard(e))
                      .whereType<Widget>()
                      .toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Card ',
                          style: Get.theme.textTheme.bodyText2!.copyWith(
                              fontWeight: FontWeight.w700,
                              color: MyColors.primaryTextColor),
                        ),
                        Text(
                          'Settings',
                          style: Get.theme.textTheme.bodyText2!.copyWith(
                              fontWeight: FontWeight.w400,
                              color: MyColors.primaryTextColor),
                        ),
                      ],
                    ),
                    Container(
                      height: 220,
                      child: ListView(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                boxShadow: [
                                  const BoxShadow(
                                      color: Color(0x1A274034),
                                      offset: Offset(0, 8),
                                      blurRadius: 20)
                                ]),
                            child: ListTile(
                                title: Text(
                                  'Default wallet',
                                  style: Get.theme.textTheme.bodyText2!.copyWith(
                                      color: MyColors.primaryTextColor,
                                      fontWeight: FontWeight.w700),
                                ),
                                leading: Container(
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(9),
                                        color: MyColors.primaryTextColor),
                                    child: const Icon(
                                      CupertinoIcons.tag,
                                      size: 13,
                                      color: Colors.white,
                                    )),
                                trailing: GetBuilder(
                                    init: WalletScreenController(),
                                    builder: (controller) {
                                      return CupertinoSwitch(
                                        activeColor: const Color(0xff1AD5AD),
                                        value: controller.firstButton.value,
                                        onChanged: (value) {
                                          controller.firstButton.value =
                                              !controller.firstButton.value;
                                          controller.update();
                                        },
                                      );
                                    })),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 13),
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                boxShadow: [
                                  const BoxShadow(
                                      color: Color(0x1A274034),
                                      offset: Offset(0, 8),
                                      blurRadius: 20)
                                ]),
                            child: ListTile(
                              title: Text(
                                'Automatic deposit',
                                style: Get.theme.textTheme.bodyText2!.copyWith(
                                    color: MyColors.primaryTextColor,
                                    fontWeight: FontWeight.w700),
                              ),
                              leading: Container(
                                  height: 34,
                                  width: 34,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9),
                                      color: MyColors.primaryTextColor),
                                  child: Assets.img.wallet.icon.image()),
                              trailing: Obx(() => CupertinoSwitch(
                                    activeColor: const Color(0xff1AD5AD),
                                    value: controller.secondButton.value,
                                    onChanged: (value) {
                                      controller.secondButton.value =
                                          !controller.secondButton.value;
                                    },
                                  )),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 13),
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                boxShadow: [
                                  const BoxShadow(
                                      color: Color(0x1A274034),
                                      offset: Offset(0, 8),
                                      blurRadius: 20)
                                ]),
                            child: ListTile(
                                title: Text(
                                  'Notifications',
                                  style: Get.theme.textTheme.bodyText2!.copyWith(
                                      color: MyColors.primaryTextColor,
                                      fontWeight: FontWeight.w700),
                                ),
                                leading: Container(
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(9),
                                        color: MyColors.primaryTextColor),
                                    child: const Icon(
                                      Icons.notifications_none,
                                      size: 13,
                                      color: Colors.white,
                                    )),
                                trailing: Obx(() => CupertinoSwitch(
                                      activeColor: const Color(0xff1AD5AD),
                                      value: controller.thirdButton.value,
                                      onChanged: (value) {
                                        controller.thirdButton.value =
                                            !controller.thirdButton.value;
                                      },
                                    ))),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: MyBottomNavigationBar(),
      ),
    );
  }

  Widget buildCard(String path) {
    int index = controller.cards.indexOf(path);
    return Column(
      children: [
        Obx(
          () => Image.asset(
            'assets/img/wallet/$path.png',
            height: controller.currentPage.value == index
                ? Get.height / 3.8

                : Get.height / 4.2,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
