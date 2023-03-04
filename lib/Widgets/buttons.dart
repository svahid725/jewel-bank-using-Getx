import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      required this.icon,
      required this.gradientBeginColor,
      required this.gradientEndColor})
      : super(key: key);
  final Function()? onPressed;
  final String text;
  final bool icon;
  final Color gradientBeginColor;

  final Color gradientEndColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      width: 136,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [gradientBeginColor, gradientEndColor]),
      ),
      child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shadowColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)))),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon
                  ? const SizedBox(width: 16)
                  : const SizedBox(
                      width: 14,
                    ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: Get.theme.textTheme.bodyText2!
                    .copyWith(fontWeight: FontWeight.w700, color: Colors.white),
              ),
              icon ? const SizedBox(width: 24) : const SizedBox(),
              icon ? const Icon(Icons.arrow_forward, color: Colors.white) : const SizedBox()
            ],
          )),
    );
  }
}

class MySuffixIcon extends StatelessWidget {
  const MySuffixIcon(
      {Key? key,
      required this.onTap,
      required this.icon,
      required this.gradientBeginColor,
      required this.gradientEndColor})
      : super(key: key);
  final Icon icon;
  final Function() onTap;
  final Color gradientBeginColor;
  final Color gradientEndColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 21, 0),
        width: 28,
        height: 28,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [ gradientBeginColor, gradientEndColor])),
        child: icon,
      ),
    );
  }
}
