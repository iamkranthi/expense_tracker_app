//TODO change text with respect to screen size using media query
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//*used
TextStyle get headingStyle {
  return GoogleFonts.notoSans(
    textStyle: const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white70,
    ),
  );
}


//*used
TextStyle get iconHeadingStyle {
  return GoogleFonts.notoSans(
    textStyle: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: Colors.blueGrey,
    ),
  );
}

//*used
TextStyle get tasktextStyle {
  return GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontSize: 15,
      color: Colors.black,
    ),
  );
}
//*used
TextStyle get upiIdNameStyle {
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    ),
  );
}
//*used
TextStyle get upiIdStyle {
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 18,
      color: Colors.black87,
      fontWeight: FontWeight.w400,
      overflow: TextOverflow.fade,
    ),
  );
}

TextStyle get rHeading {
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
  );
}
//*used
TextStyle get rSubtitle {
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 19,
      color: Colors.black87,
      fontWeight: FontWeight.w500,
     
    ),
  );
}
