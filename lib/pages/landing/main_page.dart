import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../home/home_desktop.dart';
import '../home/home_mobile.dart';
import '../home/home_tablet.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const HomeMobileLayout(),
      tablet: const HomeTablet(),
      desktop: const HomeDesktop(),
    );
  }
}
