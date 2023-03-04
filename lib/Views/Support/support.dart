import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewel_bank/Utils/colors_utils.dart';
import 'package:jewel_bank/Widgets/support_container.dart';
import 'package:jewel_bank/gen/assets.gen.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.backgroundColor,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Support',
                style: Get.theme.textTheme.bodyText1!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: MyColors.primaryTextColor,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.square_grid_2x2,
                    color: MyColors.primaryTextColor,
                  ))
            ],
          ),
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back,
              size: 22,
              color: MyColors.primaryTextColor,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              const SupportContainer(),
              const SizedBox(height: 18),
              Expanded(
                child: ListView(
                    children: ListTile.divideTiles(context: context, tiles: [
                  MyListTile(
                    title: 'Director of Support',
                    subtitle: 'Call To Director of Support',
                    image: Assets.img.support.img.image(width: 48, height: 48),
                  ),
                  MyListTile(
                      title: 'Adam Henjod',
                      subtitle: 'Call To Adam Henjod',
                      image:
                          Assets.img.support.img1.image(width: 48, height: 48)),
                  MyListTile(
                    title: 'Guy Hawkins',
                    subtitle: 'Call To Guy Hawkins',
                    image: Assets.img.support.img2.image(width: 48, height: 48),
                  ),
                  MyListTile(
                    title: 'Ronald Richards',
                    subtitle: 'Call To Ronald Richards',
                    image: Assets.img.support.img3.image(width: 48, height: 48),
                  ),
                  MyListTile(
                    title: 'Cameron Wiliamson',
                    subtitle: 'Call To Cameron Wiliamson',
                    image: Assets.img.support.img4.image(width: 48, height: 48),
                  ),
                  MyListTile(
                    title: 'Ralph Edwards',
                    subtitle: 'Call To Ralph Edwards',
                    image: Assets.img.support.img5.image(width: 48, height: 48),
                  ),
                ]).toList()),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image});

  final String title;
  final String subtitle;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Get.theme.textTheme.bodyText1!
            .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
      ),
      subtitle: Row(
        children: [
          const Icon(Icons.phone, size: 14),
          const SizedBox(width: 9),
          Text(
            subtitle,
            style: Get.theme.textTheme.caption!
                .apply(color: MyColors.secondaryGrayTextColor),
          ),
        ],
      ),
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: image,
      ),
      trailing: const Icon(Icons.output, color: Colors.black),
      style: ListTileStyle.list,
    );
  }
}
