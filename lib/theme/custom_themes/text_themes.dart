import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class OTTextTheme{

  OTTextTheme._();//This theme contractor to be used once we initialize the class as such

  static TextTheme lightTextTheme = const TextTheme(
    displayLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: OTColors.primaryColorB), // Headers
    displayMedium: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w400, color: OTColors.primaryColorB), // Titles
    bodyLarge:  TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: OTColors.primaryColorB), // General Text
    bodyMedium:  TextStyle(fontSize: 14.0, fontWeight: FontWeight.w200, color: OTColors.primaryColorB), //Buttons
  );

  static TextTheme darkTextTheme = const TextTheme(
    displayLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: OTColors.primaryColorW),
    displayMedium: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w400, color: OTColors.primaryColorW),
    bodyLarge:  TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: OTColors.primaryColorW),
    bodyMedium:  TextStyle(fontSize: 14.0, fontWeight: FontWeight.w200, color: OTColors.primaryColorW),
  );
}