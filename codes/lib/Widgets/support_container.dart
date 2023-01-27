import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewel_bank/Utils/routing_utils.dart';
import 'package:jewel_bank/gen/assets.gen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../Utils/colors_utils.dart';

class SupportContainer extends StatelessWidget {
  const SupportContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      height: 155,
      width: Get.width,
      decoration: BoxDecoration(
          color: MyColors.primaryTextColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Color(0xC7FF8695), blurRadius: 20, offset: Offset(0, 8))
          ]),
      child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Assets.img.support.icon.image(
            height: 56,
            width: 56
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Need to contact support directly?',style: Get.textTheme.bodyText1!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700
              ),),
              SizedBox(height: 8),
              Text('After buying an account\nyou can directly communicate with\nall the supporters',
                style: Get.textTheme.bodyText1!.copyWith(
                color: MyColors.secondaryGrayTextColor,
                fontSize: 15
              ),),
              SizedBox(height: 10),
              Row(
                children: [
                  InkWell(
                    onTap: ()=>Get.toNamed(Routes.accountPurchase.name),
                    child: GradientText('Account purchase',style: Get.textTheme.bodyText1!.copyWith(
                        fontSize: 14,
                      fontWeight: FontWeight.w700
                    ) ,colors: [MyColors.purpleGradientBegin,MyColors.purpleGradientEnd]),
                  ),
                 SizedBox(width: 13),
                 Icon(Icons.arrow_forward_ios, color: MyColors.secondaryGrayTextColor, size: 10)
      ],
              )
            ],
          )
        ],
      ),
    );
  }
}
