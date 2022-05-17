import 'package:flutter/material.dart';
import 'color_manager.dart';

import 'font_manager.dart';
import 'style_manager.dart';
import 'values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // Main colors of the app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    // ripple color
    splashColor: ColorManager.primaryOpacity70,
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),

    // App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getBoldStyle(
        color: ColorManager.black,
        fontSize: FontSize.s16,
      ),
    ),

    // Text theme
    textTheme: TextTheme(
      headline1: getSemiBoldStyle(
          color: ColorManager.darkGray, fontSize: FontSize.s16),
      headline2:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
      headline3:
          getBoldStyle(color: ColorManager.primary, fontSize: FontSize.s16),
      headline4:
          getRegularStyle(color: ColorManager.primary, fontSize: FontSize.s14),
      subtitle1:
          getMediumStyle(color: ColorManager.lightGrey, fontSize: FontSize.s14),
      subtitle2:
          getMediumStyle(color: ColorManager.primary, fontSize: FontSize.s14),
      bodyText2: getMediumStyle(color: ColorManager.lightGrey),
      caption: getRegularStyle(color: ColorManager.grey1),
      bodyText1: getRegularStyle(color: ColorManager.grey),
    ),
  );
}
