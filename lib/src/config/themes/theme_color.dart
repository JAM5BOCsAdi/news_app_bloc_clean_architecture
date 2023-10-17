import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class ThemeColor {
  // void setSystemUIOverlayStyle() {
  //   SystemChrome.setSystemUIOverlayStyle(
  //     const SystemUiOverlayStyle(
  //       systemNavigationBarColor: Colors.transparent,
  //       systemNavigationBarDividerColor: Colors.transparent,
  //     ),
  //   );
  // }

  Brightness getBrightness(BuildContext context) {
    return MediaQuery.of(context).platformBrightness;
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
