import 'package:flutter/material.dart';
import 'package:hemanth_dev/routing/route_name.dart';
import 'package:hemanth_dev/views/about/about_view.dart';
import 'package:hemanth_dev/views/home/home_view.dart';
import 'package:hemanth_dev/views/projects/retro_music.dart';
import 'package:hemanth_dev/views/work/work_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(LandingPage(), settings);
    case AboutRoute:
      return _getPageRoute(AboutPage(), settings);
    case RetroMusicRoute:
      return _getPageRoute(RetroMusic(), settings);
    case ProjectRoute:
      return _getPageRoute(WorkPage(), settings);
    case ContactRoute:
      return _getPageRoute(
          Container(
            color: Colors.red,
          ),
          settings);
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
