import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'custom_themes/text_themes.dart';

class OTAppTheme {
  OTAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Sora",
      brightness: Brightness.light,
      primaryColor: OTColors.primaryColorG,
      scaffoldBackgroundColor: OTColors.primaryColorW,
      textTheme: OTTextTheme.lightTextTheme
  );

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Sora",
      brightness: Brightness.dark,
      primaryColor: OTColors.primaryColorG,
      scaffoldBackgroundColor: OTColors.primaryColorB,
      textTheme: OTTextTheme.darkTextTheme
  );
}