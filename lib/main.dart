import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hemanth_dev/pages/about_page.dart';
import 'package:hemanth_dev/pages/landing_page.dart';
import 'package:hemanth_dev/pages/retro_music.dart';
import 'package:hemanth_dev/pages/work_page.dart';

void main() => runApp(BaseApp());

class BaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hemanth S",
      theme: ThemeData(
        fontFamily: 'Product Sans',
         primaryColor: Colors.green[200],
         buttonTheme: ButtonThemeData(buttonColor: Colors.green[200]),
      ),
      
      routes: {
        LandingPage.routeName: (context) => LandingPage(),
        WorkPage.routeName: (context) => WorkPage(),
        AboutPage.routeName: (context) => AboutPage(),
        RetroMusic.routeName: (context) => RetroMusic(),
      },
    );
  }
}
