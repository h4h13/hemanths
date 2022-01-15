import 'package:flutter/material.dart';

import '../../constants.dart';
import 'project_page.dart';

class PaisaPage extends StatelessWidget {
  const PaisaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProjectsPage(
      appName: 'Paisa - Expense Manager',
      developerName: 'Hemanth Savarala',
      rating: 0,
      downloads: 100,
      screenShots: [
        'assets/images/paisa_1.png',
        'assets/images/paisa_2.png',
        'assets/images/paisa_3.png',
        'assets/images/paisa_4.png',
        'assets/images/paisa_5.png',
        'assets/images/paisa_6.png',
        'assets/images/paisa_7.png',
      ],
      appDescription: paisaAppDesctiption,
      reviews: 0,
      appLogo: 'assets/images/paisa_logo.png',
      appUrl:
          'https://play.google.com/store/apps/details?id=dev.hemanths.paisa',
    );
  }
}
