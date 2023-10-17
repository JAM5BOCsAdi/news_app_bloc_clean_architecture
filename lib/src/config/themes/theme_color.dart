import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeColor {
  Brightness getBrightness(BuildContext context) {
    return MediaQuery.of(context).platformBrightness;
  }

  SystemUiOverlayStyle getSystemNavigationBarStyle(BuildContext context) {
    final brightness = getBrightness(context);
    final backgroundColor = brightness == Brightness.light ? Colors.white : Colors.black;
    final iconBrightness = brightness == Brightness.light ? Brightness.light : Brightness.dark;

    return SystemUiOverlayStyle(
      systemNavigationBarIconBrightness: iconBrightness,
      systemNavigationBarColor: backgroundColor,
    );
  }

  Color getPrimaryColor(BuildContext context) {
    final platformBrightness = getBrightness(context);
    return platformBrightness == Brightness.light ? FlexColor.purpleM3LightPrimary : FlexColor.purpleM3DarkPrimary;
  }

  Color getSecondaryColor(BuildContext context) {
    final platformBrightness = getBrightness(context);
    return platformBrightness == Brightness.light ? FlexColor.purpleM3DarkSecondary : FlexColor.purpleM3LightSecondary;
  }
}
