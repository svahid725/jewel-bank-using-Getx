import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewel_bank/Controllers/Monetization/monetization_controller.dart';
import 'package:jewel_bank/Utils/colors_utils.dart';
import 'package:jewel_bank/Utils/routing_utils.dart';
import 'package:jewel_bank/Widgets/bottom_nav_bar.dart';
import 'package:jewel_bank/gen/assets.gen.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MonetizationScreen extends StatelessWidget {
  const MonetizationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MonetizationController controller = Get.put(MonetizationController());
    final TextStyle inContainerText = Get.textTheme.bodyText2!
        .copyWith(color: Colors.white, fontWeight: FontWeight.w700);
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: MyColors.backgroundColor,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Monetization',
                  style: Get.theme.textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: MyColors.primaryTextColor)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.barcode_viewfinder,
                    color: MyColors.primaryTextColor,
                  ))
            ],
          ),
          leading: IconButton(
            onPressed: () => Get.toNamed(Routes.support.name),
            icon: const Icon(
              CupertinoIcons.text_alignleft,
              size: 22,
              color: MyColors.primaryTextColor,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Balance',
                style: Get.theme.textTheme.headline5!.copyWith(
                    color: MyColors.primaryTextColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 26),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 118,
                  width: 24,
                  decoration: BoxDecoration(
                      color: Color(0xff24CDD8),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          bottomRight: Radius.circular(16))),
                ),
                SizedBox(width: 11),
                Text(
                  '425.97 USD',
                  style: Get.theme.textTheme.headline5!.copyWith(
                      color: MyColors.primaryTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 26),
                ),
                SizedBox(width: 11),
                Container(
                  height: 28,
                  width: 39,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    gradient: LinearGradient(colors: [
                      MyColors.greenGradientBegin,
                      MyColors.greenGradientEnd
                    ]),
                  ),
                  child: Text('23', style: inContainerText),
                ),
                SizedBox(width: 6),
                Container(
                  height: 28,
                  width: 87,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      gradient: LinearGradient(colors: [
                        MyColors.greenGradientBegin,
                        MyColors.greenGradientEnd
                      ])),
                  child: Text('December', style: inContainerText),
                ),
                SizedBox(width: 6),
                Container(
                  height: 28,
                  width: 54,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      gradient: LinearGradient(colors: [
                        MyColors.greenGradientBegin,
                        MyColors.greenGradientEnd
                      ])),
                  child: Text('2023', style: inContainerText),
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 12, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DetailItemsCard(
                            text: 'type Username',
                            begin: MyColors.purpleGradientBegin,
                            end: MyColors.purpleGradientEnd),
                        DetailItemsCard(
                          text: 'type user code',
                          begin: MyColors.pinkGradientBegin,
                          end: MyColors.pinkGradientEnd,
                        )
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DetailItemsCard(
                            text: 'monetization code',
                            begin: MyColors.purpleGradientBegin,
                            end: MyColors.purpleGradientEnd),
                        DetailItemsCard(
                          text: 'activation code',
                          begin: MyColors.pinkGradientBegin,
                          end: MyColors.pinkGradientEnd,
                        )
                      ],
                    )
                  ],
                )),
            SizedBox(height: 14),
            Center(
              child: Container(
                height: 28,
                width: 52,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    gradient: LinearGradient(colors: [
                      MyColors.greenGradientBegin,
                      MyColors.greenGradientEnd
                    ])),
                child: Text('save', style: inContainerText),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 22, 20, 0),
              child: Row(
                children: [
                  Text('Setting Monetization',
                      style: inContainerText.copyWith(
                          color: MyColors.primaryTextColor)),
                  SizedBox(width: 20),
                  Container(
                    height: 24,
                    width: 44,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        gradient: LinearGradient(colors: [
                          MyColors.pinkGradientBegin,
                          MyColors.pinkGradientEnd
                        ])),
                    child: Text('off',
                        style: inContainerText.copyWith(
                            fontWeight: FontWeight.w400)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 13, 20, 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 160,
                        height: 220,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: MyColors.primaryTextColor,
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x807D64FF),
                                  blurRadius: 20,
                                  offset: Offset(0, 8))
                            ]),
                        child: Column(
                          children: [
                            SizedBox(height: 32),
                            CircularPercentIndicator(
                              radius: 34,
                              lineWidth:6.5,
                              percent: 0.12,
                              center: Text(
                                "12%",
                                style:
                                Get.theme.textTheme.bodyText2!.apply(color: Colors.white),
                              ),
                              animationDuration: 1,
                              animation: true,
                              backgroundColor: const Color(0xff322D42),
                              circularStrokeCap: CircularStrokeCap.round,
                              linearGradient: const LinearGradient(colors: [
                                MyColors.greenGradientBegin,
                                MyColors.greenGradientEnd
                              ]),
                            ),
                            SizedBox(height: 24),
                            Text('Automatic \n Monetization', textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w700)),
                           SizedBox(height: 22),
                           GradientText('Tap to Activate', colors: [MyColors.greenGradientBegin,MyColors.greenGradientEnd])
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 16),
                            width: 160,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0x14414141),
                                      blurRadius: 20,
                                      offset: Offset(0, 8))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Today\'s income',
                                  style: inContainerText.copyWith(
                                      color: MyColors.secondaryGrayTextColor),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text('\$78.42',
                                    style: inContainerText.copyWith(
                                        color: MyColors.primaryTextColor))
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 16),
                            padding: EdgeInsets.only(left: 16, top: 0),
                            width: 160,
                            height: 124,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0x14414141),
                                      blurRadius: 20,
                                      offset: Offset(0, 8))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Assets.img.monetization.img
                                    .image(width: 34, height: 34),
                                SizedBox(height: 6),
                                Text(
                                  'today Withdraw',
                                  style: inContainerText.copyWith(
                                      color: MyColors.secondaryGrayTextColor),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text('\$67.66',
                                    style: inContainerText.copyWith(
                                        color: MyColors.primaryTextColor))
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 14),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      height: 30,
                      width: 141,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          gradient: LinearGradient(colors: [
                            MyColors.greenGradientBegin,
                            MyColors.greenGradientEnd
                          ])),
                      child: Text(
                        'Start Monetization',
                        style: inContainerText,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 30,
                      width: 141,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          gradient: LinearGradient(colors: [
                            MyColors.pinkGradientBegin,
                            MyColors.pinkGradientBegin
                          ])),
                      child: Text(
                        'Stop Monetization',
                        style: inContainerText,
                      ),
                    )
                  ])
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: MyBottomNavigationBar(),
      ),
    );
  }
}

class DetailItemsCard extends StatelessWidget {
  const DetailItemsCard(
      {Key? key, required this.text, required this.begin, required this.end})
      : super(key: key);
  final String text;
  final Color begin;
  final Color end;

  @override
  Widget build(BuildContext context) {
    final TextStyle inContainerText = Get.textTheme.bodyText2!
        .copyWith(color: Colors.white, fontWeight: FontWeight.w700);
    return Container(
        alignment: Alignment.center,
        height: 44,
        width: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: MyColors.onWhiteHistoryContainer),
        child: GradientText(
          text,
          style: inContainerText,
          colors: [begin, end],
        ));
  }
}
