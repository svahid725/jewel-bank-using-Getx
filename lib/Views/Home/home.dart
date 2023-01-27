import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewel_bank/Controllers/Home/home_controller.dart';
import 'package:jewel_bank/Models/Home/images_model.dart';
import 'package:jewel_bank/Utils/colors_utils.dart';
import 'package:jewel_bank/Widgets/bottom_nav_bar.dart';
import 'package:jewel_bank/gen/assets.gen.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ImageDataModel> imgData = ImageData.data;
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: MyColors.backgroundColor,
          elevation: 0,
          title: Row(
            children: [
              Text('Welcome ',
                  style: Get.theme.textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: MyColors.primaryTextColor,
                  )),
              Text('Demo',
                  style: Get.theme.textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: MyColors.primaryTextColor)),
              const SizedBox(width: 125),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_none_rounded,
                      color: MyColors.primaryTextColor)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: MyColors.primaryTextColor,
                  ))
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
        bottomNavigationBar: const MyBottomNavigationBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 7),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: HomeMainCard(),
            ),
            // seccond card
            Center(
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 26),
                height: 75,
                width: Get.width - 40,
                decoration: BoxDecoration(
                    boxShadow: [
                      const BoxShadow(
                          color: MyColors.homeCardShadow,
                          blurRadius: 20,
                          offset: Offset(0, 8))
                    ],
                    color: MyColors.primaryTextColor,
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('This is a Demo Account',
                        style: Get.theme.textTheme.bodyText2!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w700)),
                    Container(
                      width: 108,
                      height: 28,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              MyColors.greenGradientBegin,
                              MyColors.greenGradientEnd
                            ],
                          )),
                      child: TextButton(
                        child: Text(
                          'Account purchase',
                          style: Get.theme.textTheme.caption!.copyWith(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w700),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(13, 20, 13, 10),
              child: Text(
                'Online supporters',
                style: Get.theme.textTheme.bodyText2!.copyWith(
                    fontSize: 14,
                    color: MyColors.primaryTextColor,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 13),
              height: 80,
              width: Get.width,
              child: ListView.builder(
                padding: const EdgeInsets.only(right: 25),
                itemCount: imgData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(right: 25),
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26)),
                          child: Image.asset(imgData[index].imageUrl)),
                      const SizedBox(height: 8),
                      Container(
                        margin: const EdgeInsets.only(right: 25),
                        alignment: Alignment.center,
                        height: 16,
                        child: Text(
                          imgData[index].name,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: MyColors.onWhiteGrayTextColor),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(13, 37, 13, 0),
              child: Row(
                children: [
                  Text(
                    'History',
                    style: Get.theme.textTheme.bodyText2!.copyWith(
                        color: MyColors.primaryTextColor,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(width: 230),
                  Text(
                    '**** 4533',
                    style: Get.theme.textTheme.bodyText2!.copyWith(
                        color: MyColors.primaryTextColor,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    width: 42,
                    height: 20,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                                color: Color(0xffFF3A79),
                                shape: BoxShape.circle),
                          ),
                          left: 0,
                          right: 13,
                        ),
                        Positioned(
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                                color: Color(0xffFFD035),
                                shape: BoxShape.circle),
                          ),
                          left: 13,
                          right: 0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 17, 13, 7),
              child: Row(
                children: [
                  HistoryCardItem(
                      gradientBeginColor: MyColors.historyGradientBegin,
                      gradientEndColor: MyColors.historyGradientEnd,
                      title: Text('Monetization',
                          style: Get.theme.textTheme.bodyText2!
                              .copyWith(fontSize: 12, color: Colors.white)),
                      date: Text('14 Dec 2022',
                          style: Get.theme.textTheme.caption!
                              .copyWith(fontSize: 10, color: Colors.white)),
                      dollarValue: Text('+82.34USD',
                          style: Get.theme.textTheme.caption!.copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                      containerColor: MyColors.primaryTextColor),
                  HistoryCardItem(
                      gradientBeginColor: Colors.white,
                      gradientEndColor: Colors.white,
                      title: Text('Withdrawal',
                          style: Get.theme.textTheme.bodyText2!.copyWith(
                              fontSize: 12, color: MyColors.primaryTextColor)),
                      date: Text('14 Dec 2022',
                          style: Get.theme.textTheme.caption!.copyWith(
                              fontSize: 10,
                              color: MyColors.secondaryGrayTextColor)),
                      dollarValue: Text('-80.00USD',
                          style: Get.theme.textTheme.caption!.copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: MyColors.purpleGradientBegin)),
                      containerColor: MyColors.onWhiteHistoryContainer),
                  HistoryCardItem(
                      gradientBeginColor: Colors.white,
                      gradientEndColor: Colors.white,
                      title: Text('Monetization',
                          style: Get.theme.textTheme.bodyText2!.copyWith(
                              fontSize: 12, color: MyColors.primaryTextColor)),
                      date: Text('14 Dec 2022',
                          style: Get.theme.textTheme.caption!.copyWith(
                              fontSize: 10,
                              color: MyColors.secondaryGrayTextColor)),
                      dollarValue: Text('+79.68USD',
                          style: Get.theme.textTheme.caption!.copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: MyColors.purpleGradientBegin)),
                      containerColor: MyColors.onWhiteHistoryContainer),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomeMainCard extends StatelessWidget {
  const HomeMainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      alignment: Alignment.center,
      height: 211,
      width: Get.width - 40,
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
      decoration: BoxDecoration(
          color: MyColors.primaryTextColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow:const [
             BoxShadow(
                color: MyColors.homeCardShadow,
                blurRadius: 20,
                offset: Offset(0, 8))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Assets.img.home.cardImg.image(height: 67, width: 67)),
              Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You earned',
                        style: Get.theme.textTheme.bodyText2!.copyWith(
                            color: MyColors.greenGradientBegin,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '78.42 USD today',
                        style: Get.theme.textTheme.headline6!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                    ],
                  )),
              const SizedBox(width: 90),
              const Icon(CupertinoIcons.square_grid_2x2,
                  color: Colors.white, size: 18)
            ],
          ),
          const SizedBox(height: 40),
          Row(
            children: [
              CircularPercentIndicator(
                radius: 30,
                lineWidth: 4.5,
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
                  MyColors.historyGradientEnd,
                  MyColors.historyGradientBegin
                ]),
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    'Monetization Mode',
                    style: Get.theme.textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.w700, color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Automatic - off',
                    style: Get.theme.textTheme.bodyText2!.copyWith(
                      color: MyColors.secondaryGrayTextColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 15),
              Container(
                height: 26,
                width: 52,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                  gradient: const LinearGradient(colors: [
                    MyColors.greenGradientBegin,
                    MyColors.greenGradientEnd
                  ]),
                ),
                child: Text('On', style: Get.theme.textTheme.bodyText2!.copyWith(color: Colors.white,
                fontWeight: FontWeight.w700
                )),
              ),
              const SizedBox(width: 7),
              Container(
                height: 26,
                width: 52,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: const Color(0xffFF3A79)
                ),
                child: Text('Off', style: Get.theme.textTheme.bodyText2!.copyWith(color: Colors.white,
                    fontWeight: FontWeight.w700
                )),
              )
            ],
          )
        ],
      ),
    );
  }
}

class HistoryCardItem extends StatelessWidget {
  const HistoryCardItem(
      {Key? key,
      this.gradientBeginColor,
      this.gradientEndColor,
      required this.title,
      required this.date,
      required this.dollarValue,
      required this.containerColor})
      : super(key: key);
  final Color? gradientBeginColor;
  final Color? gradientEndColor;
  final Text title;
  final Text date;
  final Text dollarValue;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      width: 115,
      height: 122,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(
          color: Color(0xff414141).withOpacity(0.08),
          blurRadius: 20,
          offset: Offset(0,8)
        )],
        gradient:
            LinearGradient(colors: [gradientBeginColor!, gradientEndColor!]),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          title,
          const SizedBox(height: 10),
          date,
          const SizedBox(height: 22),
          Container(
            height: 28,
            width: 82,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24), color: containerColor),
            child: dollarValue,
          )
        ],
      ),
    );
  }
}
