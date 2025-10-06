import 'dart:ui';

class ColorManager {
  // Core UI Colors
  static Color primary = HexColor.fromHex("#0077B6"); // Deep ocean blue
  static Color primaryDark = HexColor.fromHex("#023E8A"); // Deep ocean blue
  static Color secondary = HexColor.fromHex("#00B4D8"); // A vibrant turquoise
  static Color accent = HexColor.fromHex("#48CAE4"); // A lighter, bright blue
  static Color secondaryDark = HexColor.fromHex("#0077B6"); // A less vibrant blue

  // Functional Colors
  static Color background = HexColor.fromHex("#E0F7FA"); // Light sky blue
  static Color onBackground = HexColor.fromHex("#03045E"); // Dark, midnight blue
  static Color surface = HexColor.fromHex("#FFFFFF"); // White like sea foam
  static Color onSurface = HexColor.fromHex("#001C3E"); // Very dark navy
  static Color hint = HexColor.fromHex("#9db3c2");
  static Color disabled = HexColor.fromHex("#9db3c2");
  static Color shadowColor = HexColor.fromHex("#293945");
  static Color lightText = HexColor.fromHex("#000000");
  static Color darkText = HexColor.fromHex("#FFFFFF");

  // Status and Feedback Colors
  static Color error = HexColor.fromHex("#E53935"); // Coral red for errors
  static Color success = HexColor.fromHex("#38A3A5"); // A calming, sea-green for success
  static Color warning = HexColor.fromHex("#FFC300"); // A golden sunbeam yellow

  // Shades of water
  static Color lightWater = HexColor.fromHex("#90E0EF");
  static Color mediumWater = HexColor.fromHex("#0077B6");
  static Color darkWater = HexColor.fromHex("#023E8A");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll("#", "");
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString";
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
