import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_strategy/url_strategy.dart';

import 'constants.dart';
import 'pages/home/home_page.dart';
import 'pages/projects/projects_page.dart';
import 'pages/projects/retro_music_page.dart';

const telegramUrl = "https://telegram.me/h4h13";
const email = "mailto:hemanths@live.com";
const linkedInUtl = "https://www.linkedin.com/in/h4h13/";
const instagramUrl = "https://www.instagram.com/h4h13/";
const twitterUrl = "https://twitter.com/h4h13";
const githubUrl = "https://github.com/h4h13";
const retroMusicPlayStoreUrl =
    "https://play.google.com/store/apps/details?id=code.name.monkey.retromusic&hl=en_IN";
const retroMusicGithubUrl = "https://github.com/h4h13/RetroMusicPlayer";
const retroMusicInstagramUrl = "https://www.instagram.com/retromusicapp/";
const retroMusicTwitterUrl = "https://twitter.com/retromusicapp/";

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hemanth S',
      themeMode: ThemeMode.dark,
      theme: whiteTheme,
      darkTheme: darkTheme,
      home: const HomePage(),
    );
  }
}

class Routes {
  static Map<String, WidgetBuilder> routes() {
    return <String, WidgetBuilder>{
      AppRoutes.home.path: (BuildContext context) => const HomePage(),
      AppRoutes.project.path: (BuildContext context) => const ProjectsPage(),
      AppRoutes.retroMucicApp.path: (BuildContext context) =>
          const RetroMusicPage()
    };
  }
}

enum AppRoutes {
  home,
  project,
  retroMucicApp,
  paiseApp,
}

extension AppRoutesExt on AppRoutes {
  String get path {
    switch (this) {
      case AppRoutes.home:
        return '/home';
      case AppRoutes.project:
        return '/project';
      case AppRoutes.retroMucicApp:
        return '/retro_music_app';
      case AppRoutes.paiseApp:
        return '/paisa';
    }
  }
}

class TranslateOnHover extends StatefulWidget {
  final Widget child;
  const TranslateOnHover({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _TranslateOnHoverState createState() => _TranslateOnHoverState();
}

class _TranslateOnHoverState extends State<TranslateOnHover> {
  final nonHoverTransform = Matrix4.identity();
  final hoverTransform = Matrix4.identity()..translate(0, -10, 0);
  bool _hovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: widget.child,
        transform: _hovering ? hoverTransform : nonHoverTransform,
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }
}

openUrl(String urlString) async {
  if (await canLaunch(urlString)) {
    await launch(urlString);
  } else {
    throw 'Could not launch $urlString';
  }
}
