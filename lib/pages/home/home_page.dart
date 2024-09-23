import 'package:flutter/material.dart';

import 'package:flutter_hemanth_dev/widgets/navigation_bar.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: TabBarNavigation(),
          ),
        ],
      ),
    );
  }
}
