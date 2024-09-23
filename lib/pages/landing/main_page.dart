import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:flutter_hemanth_dev/pages/home/home_desktop.dart';
import 'package:flutter_hemanth_dev/pages/home/home_mobile.dart';
import 'package:flutter_hemanth_dev/pages/home/home_tablet.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => const HomeMobileLayout(),
      tablet: (p0) => const HomeTablet(),
      desktop: (p0) => const HomeDesktop(),
    );
  }
}
