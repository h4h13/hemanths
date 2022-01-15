import 'package:flutter/material.dart';

import '../../constants.dart';
import 'project_page.dart';

class RetroMusicPage extends StatelessWidget {
  const RetroMusicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProjectsPage(
      appName: 'Retro Music',
      developerName: 'Hemanth Savarala',
      rating: 4.4,
      downloads: 2800000,
      screenShots: [
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
      appLogo: 'assets/images/retro_logo.png',
      appUrl:
          'https://play.google.com/store/apps/details?id=code.name.monkey.retromusic',
    );
  }
}
