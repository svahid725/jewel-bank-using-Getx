import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewel_bank/Controllers/AccountPurchase/account_purchase.dart';
import 'package:jewel_bank/Utils/colors_utils.dart';
import 'package:jewel_bank/Widgets/support_container.dart';
import 'package:jewel_bank/gen/assets.gen.dart';

class AccountPurchase extends StatelessWidget {
  const AccountPurchase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AccountPurchaseController controller = Get.put(AccountPurchaseController());
    return Scaffold(
      backgroundColor: MyColors.primaryTextColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.primaryTextColor,
        title: Text('Support', style:TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(child: Assets.img.support.img6.image(width: 127,height: 293)),
            SizedBox(height: 50),
            SupportContainer()
          ],
        ),
      ),
    );
  }
}
