import 'package:flutter/material.dart';
import 'package:hemanth_dev/pages/about_page.dart';
import 'package:hemanth_dev/pages/landing/landing_page.dart';
import 'package:hemanth_dev/pages/retro_music.dart';
import 'package:hemanth_dev/pages/work_page.dart';

Future<void> main() async {
  runApp(BaseApp());
}

class BaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hemanth S",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "ProductSansRegular",
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
