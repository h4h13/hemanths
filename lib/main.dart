import 'package:flutter/material.dart';
import 'package:flutter_hemanth_dev/app_routes.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:url_strategy/url_strategy.dart';

import 'package:flutter_hemanth_dev/theme.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Hemanth S',
      themeMode: ThemeMode.dark,
      theme: whiteTheme,
      darkTheme: darkTheme,
      routerConfig: goRouter,
    );
  }
}

void openUrl(String urlString) async {
  if (await canLaunchUrlString(urlString)) {
    await launchUrlString(urlString);
  } else {
    throw 'Could not launch $urlString';
  }
}
