import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static Color blueColor = const Color(0xFF6C63FF);
  static Color lightColor = const Color(0xFFEEEEEE);
  static Color darkColor = const Color(0xFF141922);
  static Color purpleColor = const Color(0xFFC62FF8);
  static Color containerColor = const Color(0x4CC1C1C1);
  static Color lightpurpleColor = const Color.fromARGB(142, 216, 128, 245);
  static ThemeData lightTheme = ThemeData(
    bottomAppBarTheme: const BottomAppBarTheme(
      shape: CircularNotchedRectangle(),
      color: Colors.white,
    ),
    scaffoldBackgroundColor: lightColor,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: darkColor),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.poppins(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: GoogleFonts.poppins(
        color: Colors.black.withOpacity(0.800000011920929),
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: GoogleFonts.poppins(
        color: Colors.black.withOpacity(0.5799999833106995),
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    bottomAppBarTheme: BottomAppBarTheme(
      shape: const CircularNotchedRectangle(),
      color: darkColor,
    ),
    scaffoldBackgroundColor: darkColor,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: lightColor),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: GoogleFonts.poppins(
        color: Colors.white.withOpacity(0.800000011920929),
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: GoogleFonts.poppins(
        color: Colors.white.withOpacity(0.5799999833106995),
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
