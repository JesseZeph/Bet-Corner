import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class JElevatedButtonTheme {
  JElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      foregroundColor: jWhiteColor,
      backgroundColor: jSecondaryColor,
      side: const BorderSide(color: jSecondaryColor),
      padding:
      const EdgeInsets.symmetric(vertical: jButtonHeight),

    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      foregroundColor: jSecondaryColor,
      backgroundColor: jWhiteColor,
      side: const BorderSide(color: jSecondaryColor),
      padding:
      const EdgeInsets.symmetric(vertical: jButtonHeight),
    ),
  );
}