import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final darkTheme = ThemeData(
  textTheme: GoogleFonts.outfitTextTheme(ThemeData.dark().textTheme),
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: Colors.orange.shade200,
    secondary: Colors.orange.shade100,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
  ),
);
final whiteTheme = ThemeData(
  textTheme: GoogleFonts.outfitTextTheme(ThemeData.light().textTheme),
  colorScheme: ColorScheme.light(
    primary: Colors.deepOrange.shade400,
    secondary: Colors.deepOrange.shade200,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.grey.shade900),
    elevation: 0,
  ),
);
