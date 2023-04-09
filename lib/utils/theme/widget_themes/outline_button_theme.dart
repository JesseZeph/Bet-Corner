import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class JOutlinedButtonTheme {
  JOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: jSecondaryColor,
      side: const BorderSide(color: jSecondaryColor),
      padding:
      const EdgeInsets.symmetric(vertical: jButtonHeight),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: jWhiteColor,
      side: const BorderSide(color: jWhiteColor),
      padding:
      const EdgeInsets.symmetric(vertical: jButtonHeight),
    ),
  );
}