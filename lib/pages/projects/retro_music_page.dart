import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';
import 'project_page.dart';

class RetroMusicPage extends StatelessWidget {
  const RetroMusicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectsPage(
      appName: 'Retro Music',
      developerName: 'Hemanth Savarala',
      rating: 4.4,
      downloads: 2800000,
      screenShots: const [
        'assets/images/retro_1.png',
        'assets/images/retro_2.png',
        'assets/images/retro_3.png',
        'assets/images/retro_4.png',
        'assets/images/retro_5.png',
        'assets/images/retro_6.png',
        'assets/images/retro_7.png',
      ],
      appDescription: retroAppDescription,
      reviews: 64000,
      buttons: [
        ElevatedButton.icon(
          icon: const Icon(Icons.download_rounded),
          onPressed: () {
            launch(
              'https://play.google.com/store/apps/details?id=code.name.monkey.retromusic',
            );
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
              vertical: 20,
            ),
            primary: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
