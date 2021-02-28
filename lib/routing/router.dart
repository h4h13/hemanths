import 'package:flutter/material.dart';
import 'package:hemanth_dev/pages/about_page.dart';
import 'package:hemanth_dev/pages/landing/landing_page.dart';
import 'package:hemanth_dev/pages/retro_music.dart';
import 'package:hemanth_dev/routing/route_name.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(LandingPage(), settings);
    case AboutRoute:
      return _getPageRoute(AboutPage(), settings);
    case RetroMusicRoute:
      return _getPageRoute(RetroMusic(), settings);
    default:
      return _getPageRoute(LandingPage(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
