import 'package:flutter/material.dart';
import 'package:flutter_mvvm_course/presentation/resource_managers/font_manager.dart';

TextStyle _getTextStyle(double fontSize, String fontFamily, Color color, FontWeight fontWeight) {
  return TextStyle(fontSize: fontSize, fontFamily: fontFamily, color: color, fontWeight: fontWeight);
}

TextStyle getRegularStyle({double fontSize = FontSizeManager.medium, required Color color}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily, color, FontWeightManager.medium);
}

TextStyle getLightStyle({double fontSize = FontSizeManager.medium, required Color color}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily, color, FontWeightManager.light);
}

TextStyle getBoldStyle({double fontSize = FontSizeManager.medium, required Color color}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily, color, FontWeightManager.bold);
}
