import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jewel_bank/Utils/colors_utils.dart';
import 'package:jewel_bank/Widgets/bottom_nav_bar.dart';
import 'package:jewel_bank/gen/assets.gen.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  final TextStyle inContainerTextStyle = Get.textTheme.bodyText2!
      .copyWith(color: MyColors.primaryTextColor, fontWeight: FontWeight.w700);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon:
                const Icon(Icons.arrow_back, color: MyColors.primaryTextColor),
          ),
          backgroundColor: MyColors.backgroundColor,
          title: Text(
            'Setting',
            style: Get.textTheme.bodyText1!.copyWith(
                color: MyColors.primaryTextColor,
                fontWeight: FontWeight.w700,
                fontSize: 16),
          ),
          elevation: 0,
        ),
        backgroundColor: MyColors.backgroundColor,
        bottomNavigationBar: const MyBottomNavigationBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 36, 20, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 112,
                      height: 482,
                      decoration: BoxDecoration(
                          color: MyColors.primaryTextColor,
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                              child: Assets.img.home.cardImg
                                  .image(width: 72, height: 72)),
                          SizedBox(height: 35),
                          Transform.rotate(
                              angle: pi / 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Demo Account',
                                    style: inContainerTextStyle.apply(
                                        color: Colors.white),
                                    maxLines: 1,
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                     
                                    children: [
                                      CircularPercentIndicator(
                                        radius: 22,
                                        backgroundColor: Color(0xff2F2A3F),
                                        percent: 0.42,
                                        linearGradient: LinearGradient(colors: [
                                          Color(0xffFFD035),
                                          Color(0xffFFD035)
                                        ]),
                                        lineWidth: 3.5,
                                        circularStrokeCap:
                                            CircularStrokeCap.round,
                                      ),
                                      SizedBox(width: 16),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Your User Id',
                                            maxLines: 1,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white),
                                          ),
                                          SizedBox(height: 4),
                                          Text('91827381',
                                              style: inContainerTextStyle.apply(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    TextFields(inContainerTextStyle: inContainerTextStyle),
                  ],
                ),
                const SizedBox(height: 50),
                InkWell(
                  radius: 50,
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 56,
                    width: 237,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(colors: [
                          MyColors.historyGradientBegin,
                          MyColors.historyGradientEnd
                        ])),
                    child: Text(
                      'Confirm',
                      style: inContainerTextStyle.apply(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  const TextFields({
    Key? key,
    required this.inContainerTextStyle,
  }) : super(key: key);

  final TextStyle inContainerTextStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const MyContainer(text: 'Name'),
        const MyContainer(text: 'User Name'),
        const MyContainer(text: 'Phone Number'),
        const MyContainer(text: 'Email'),
        const MyContainer(text: 'Actication Code'),
        const MyContainer(text: 'Monetization Code'),
        const MyContainer(text: 'UserCode'),
        const MyContainer(text: 'Purchase code'),
        const SizedBox(height: 26),
        Row(
          children: [
            Container(
              width: 92,
              height: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: const LinearGradient(colors: [
                    MyColors.purpleGradientBegin,
                    MyColors.purpleGradientEnd
                  ]),
                  boxShadow: [
                    const BoxShadow(
                        color: Color(0x6E7D64FF),
                        blurRadius: 20,
                        offset: Offset(0, 4))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Upload \nProfile',
                      textAlign: TextAlign.center,
                      style: inContainerTextStyle.apply(color: Colors.white)),
                  const Icon(Icons.check, color: Colors.white)
                ],
              ),
            ),
            const SizedBox(width: 14),
            Container(
              width: 92,
              height: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x1A000000),
                        blurRadius: 10,
                        offset: Offset(0, 4))
                  ],
                  color: Colors.white),
              child: Text('Account\nPurchase', style: inContainerTextStyle),
            ),
          ],
        ),
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    final TextStyle inContainerTextStyle = Get.textTheme.bodyText2!.copyWith(
        color: MyColors.primaryTextColor, fontWeight: FontWeight.w700);
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.only(left: 16),
      width: 198,
      height: 38,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            const BoxShadow(
                color: Color(0x1A000000), blurRadius: 20, offset: Offset(0, 4))
          ]),
      child: TextField(
        decoration: InputDecoration(
            hintText: text,
            hintStyle: inContainerTextStyle,
            enabledBorder: InputBorder.none,
            border: InputBorder.none),
      ),
    );
  }
}
