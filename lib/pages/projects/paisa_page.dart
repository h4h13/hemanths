import 'package:flutter/material.dart';
import 'package:flutter_hemanth_dev/pages/projects/project_page.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants.dart';

class PaisaPage extends StatelessWidget {
  const PaisaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectsPage(
      appName: 'Paisa - Expense Manager',
      developerName: 'Hemanth Savarala',
      rating: 0,
      downloads: 10,
      screenShots: const [
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
      buttons: [
        ElevatedButton.icon(
          icon: const Icon(Icons.download_rounded),
          onPressed: () {
            launch(
                'https://play.google.com/store/apps/details?id=dev.hemanths.paisa');
          },
          label: Text(
            'Google Play',
            style: Theme.of(context).primaryTextTheme.headline6?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 28,
              vertical: 16,
            ),
            primary: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
