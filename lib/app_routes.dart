import 'package:flutter/material.dart';

import 'pages/landing/main_page.dart';
import 'pages/projects/paisa_page.dart';
import 'pages/projects/retro_music_page.dart';

const home = '/home';
const paiseApp = '/paisa';
const retroMucicApp = '/retro-music';

Route generateRoute(RouteSettings settings) {
  late Widget page = const MainPage();

  switch (settings.name) {
    case home:
      page = const MainPage();
      break;
    case retroMucicApp:
      page = const RetroMusicPage();
      break;
    case paiseApp:
      page = const PaisaPage();
      break;
  }

  return MaterialPageRoute(
    builder: (context) => page,
    settings: settings,
  );
}
