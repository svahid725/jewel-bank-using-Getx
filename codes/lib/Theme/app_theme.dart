import 'package:flutter/material.dart';
import 'package:jewel_bank/Utils/colors_utils.dart';
import 'package:jewel_bank/gen/fonts.gen.dart';

class MyThemeData {
  static ThemeData themeData = ThemeData(
      colorScheme: const ColorScheme.light(),
      textTheme: const TextTheme(
          bodyText2: TextStyle(

            color: MyColors.grayTextColor30,
            fontFamily: FontFamily.inriaSans,
          ),
          headline6: TextStyle(
            fontFamily: FontFamily.inriaSans,
            fontWeight: FontWeight.w700,
          ),
          bodyText1: TextStyle()));
}
