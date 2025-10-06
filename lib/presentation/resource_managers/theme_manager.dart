import 'package:flutter/material.dart';
import 'package:flutter_mvvm_course/presentation/resource_managers/color_manager.dart';
import 'package:flutter_mvvm_course/presentation/resource_managers/font_manager.dart';
import 'package:flutter_mvvm_course/presentation/resource_managers/space_manager.dart';
import 'package:flutter_mvvm_course/presentation/resource_managers/styles_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primary,
    primaryColorDark: ColorManager.primaryDark,
    disabledColor: ColorManager.disabled,
    cardTheme: CardTheme(
      color: ColorManager.surface,
      shadowColor: ColorManager.shadowColor,
      elevation: AppSizeManager.s4,
      surfaceTintColor: ColorManager.onSurface,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: ColorManager.background,
      foregroundColor: ColorManager.surface,
      elevation: AppSizeManager.s4,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: ColorManager.primary,
      shape: StadiumBorder(),
      splashColor: ColorManager.lightWater,
    ),
    textTheme: TextTheme(
      headlineLarge: getBoldStyle(color: ColorManager.darkWater, fontSize: FontSizeManager.extraLarge),
      headlineMedium: getBoldStyle(color: ColorManager.darkWater, fontSize: FontSizeManager.large),
      headlineSmall: getBoldStyle(color: ColorManager.darkWater, fontSize: FontSizeManager.semiLarge),
      bodySmall: getRegularStyle(color: ColorManager.lightText, fontSize: FontSizeManager.small),
      bodyMedium: getRegularStyle(color: ColorManager.lightText, fontSize: FontSizeManager.medium),
      bodyLarge: getRegularStyle(color: ColorManager.lightText, fontSize: FontSizeManager.large),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(AppSizeManager.s8),
      hintStyle: getRegularStyle(color: ColorManager.accent),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.background,
          style: BorderStyle.solid,
        ),
      ),
    ),
  );

  // App Bar Theme
}
