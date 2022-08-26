import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle get headingStyle {
  return GoogleFonts.notoSans(
    textStyle: const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle get subHeadingStyle {
  return GoogleFonts.notoSans(
    textStyle: const TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w600,
    ),
  );
}

TextStyle get iconHeadingStyle {
  return GoogleFonts.notoSans(
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: Colors.green,
    ),
  );
}