import 'dart:ui';

class ColorManager {
  static Color primary = HexColor.fromHex("#ED12SD");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll("#", "");
    if (hexColorString.length == 6) {
      hexColorString = "FF $hexColorString";
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
