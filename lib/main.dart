import 'package:flutter/material.dart';
import 'package:hemanth_dev/views/template_layout/layout_template.dart';
import 'package:hemanth_dev/locator.dart';
import 'package:hemanth_dev/routing/route_name.dart';
import 'package:hemanth_dev/routing/router.dart';
import 'package:hemanth_dev/services/navigation_service.dart';

Future<void> main() async {
  setupLocator();
  runApp(BaseApp());
}

class BaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hemanth S",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Product Sans"),
      builder: (context, child) => LayoutTemplate(child: child),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
    );
  }
}
