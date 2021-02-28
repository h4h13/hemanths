import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:hemanth_dev/navigation_bar/navigation_bar.dart';
import 'package:hemanth_dev/navigation_bar/navigation_drawer.dart/navigation_drawer.dart';
import 'package:hemanth_dev/pages/landing/components/user_details.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingMobile extends StatelessWidget {
  const LandingMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/hemanth.jpg"),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.75),
                BlendMode.srcATop,
              ),
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  NavigationBar(),
                  UserDetails(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
