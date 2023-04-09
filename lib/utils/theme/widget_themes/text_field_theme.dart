import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class JTextFormFieldTheme {
  JTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
       InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
          prefixIconColor: jSecondaryColor,
          floatingLabelStyle: const TextStyle(color: jSecondaryColor),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: const BorderSide(width: 2, color: jSecondaryColor)));

  static InputDecorationTheme darkInputDecorationTheme =
       InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
    prefixIconColor: jPrimaryColor,
    floatingLabelStyle: const TextStyle(color: jPrimaryColor),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
      borderSide: const BorderSide(width: 2, color: jPrimaryColor),
    ),
  );
}
