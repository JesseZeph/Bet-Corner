import 'package:bet_corner/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:bet_corner/utils/theme/widget_themes/outline_button_theme.dart';
import 'package:bet_corner/utils/theme/widget_themes/text_field_theme.dart';
import 'package:bet_corner/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class JAppTheme {
  JAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: JTextTheme.lightTextTheme,
    outlinedButtonTheme: JOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: JElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: JTextFormFieldTheme.lightInputDecorationTheme,
  );


  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: JTextTheme.darkTextTheme,
    outlinedButtonTheme: JOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: JElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: JTextFormFieldTheme.darkInputDecorationTheme,

  );
}
