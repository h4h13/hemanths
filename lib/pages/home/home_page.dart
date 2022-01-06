import 'package:flutter/material.dart';
import 'package:flutter_hemanth_dev/pages/projects/paisa_page.dart';
import '../../main.dart';
import '../main/main_page.dart';
import '../projects/projects_page.dart';
import '../projects/retro_music_page.dart';
import '../../widgets/navigation_bar.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        color: Colors.amber,
      ),
      body: Stack(
        children: [
          Navigator(
            key: navigatorKey,
            initialRoute: AppRoutes.home.path,
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

Route<dynamic> generateRoute(RouteSettings settings) {
  final appRoutes = AppRoutes.values.firstWhere(
    (element) => element.path == settings.name,
    orElse: () => AppRoutes.home,
  );
  late Widget page;

  switch (appRoutes) {
    case AppRoutes.home:
      page = const MainPage();
      break;
    case AppRoutes.project:
      page = const ProjectsPage();
      break;
    case AppRoutes.retroMucicApp:
      page = const RetroMusicPage();
      break;
    case AppRoutes.paiseApp:
      page = const PaisaPage();
      break;
  }

  return MaterialPageRoute<dynamic>(
    builder: (context) => page,
    settings: settings,
  );
}
