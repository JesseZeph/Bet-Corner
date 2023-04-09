import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';

class JTextTheme {
  JTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.montserrat(fontSize: 28.0, fontWeight: FontWeight.bold, color: jDarkColor),
    displayMedium: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700, color: jDarkColor),
    displaySmall: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700, color: jDarkColor),
    headlineMedium: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w600, color: jDarkColor),
    titleLarge: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w600, color: jDarkColor),
    bodyLarge: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: jDarkColor),
    bodyMedium: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: jDarkColor),

  );
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.montserrat(fontSize: 28.0, fontWeight: FontWeight.bold, color: jWhiteColor),
    displayMedium: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700, color: jWhiteColor),
    displaySmall: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700, color: jWhiteColor),
    headlineMedium: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w600, color: jWhiteColor),
    titleLarge: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w600, color: jWhiteColor),
    bodyLarge: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: jWhiteColor),
    bodyMedium: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: jWhiteColor),

  );

}