//TODO change text with respect to screen size using media query
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle get headingStyle {
  return GoogleFonts.notoSans(
    textStyle: const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white70,
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
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: Colors.blueGrey,
    ),
  );
}

TextStyle get tasktextStyle {
  return GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontSize: 15,
      color: Colors.black,
    ),
  );
}
