import 'package:flutter/material.dart';

import '../../app_routes.dart';
import '../../widgets/navigation_bar.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Navigator(
            key: navigatorKey,
            initialRoute: home,
            onGenerateRoute: generateRoute,
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: TabBarNavigation(),
          ),
        ],
      ),
    );
  }
}
