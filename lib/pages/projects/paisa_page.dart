import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';
import 'project_page.dart';

class PaisaPage extends StatelessWidget {
  const PaisaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectsPage(
      appName: 'Paisa - Expense Manager',
      developerName: 'Hemanth Savarala',
      rating: 4.6,
      downloads: 100,
      screenShots: const [
        'assets/images/paisa_1.png',
        'assets/images/paisa_2.png',
        'assets/images/paisa_3.png',
        'assets/images/paisa_4.png',
        'assets/images/paisa_5.png',
        'assets/images/paisa_6.png',
        'assets/images/paisa_7.png',
        'assets/images/paisa_8.png',
      ],
      appDescription: paisaAppDesctiption,
      reviews: 3,
      appLogo: 'assets/images/paisa_logo.png',
      appUrl:
          'https://play.google.com/store/apps/details?id=dev.hemanths.paisa',
      buttons: [
        ElevatedButton.icon(
          icon: const Icon(Icons.download_rounded),
          onPressed: () {
            launch(
                'https://github.com/h4h13/h4h13.github.io/blob/master/paisa-release/release.md');
          },
          label: Text(
            'download'.resolveString(),
          ),
          style: ElevatedButton.styleFrom(
            primary: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
