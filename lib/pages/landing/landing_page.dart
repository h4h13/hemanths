import 'package:flutter/material.dart';
import 'package:hemanth_dev/pages/landing/landing_desktop.dart';
import 'package:hemanth_dev/pages/landing/landing_mobile.dart';
import 'package:hemanth_dev/pages/landing/landing_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingPage extends StatelessWidget {
  static var routeName = "/";

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: LandingDesktop(),
      mobile: LandingMobile(),
      tablet: LandingTablet(),
    );
  }
}
