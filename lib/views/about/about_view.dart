import 'package:flutter/material.dart';
import 'package:hemanth_dev/views/about/about_content_mobile.dart';
import 'package:hemanth_dev/views/about/about_content_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutMobile(),
      desktop: AboutTabletDesktop(),
    );
  }
}
