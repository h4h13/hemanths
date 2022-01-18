import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
      appLogo: 'assets/images/retro_logo.png',
      appUrl:
          'https://play.google.com/store/apps/details?id=code.name.monkey.retromusic',
      buttons: [
        ElevatedButton.icon(
          icon: const Icon(MdiIcons.github),
          onPressed: () {
            launch('https://github.com/RetroMusicPlayer/RetroMusicPlayer');
          },
          label: Text(
            'github'.resolveString(),
          ),
          style: ElevatedButton.styleFrom(
            primary: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        ElevatedButton.icon(
          icon: const Icon(MdiIcons.download),
          onPressed: () {
            launch(
                'https://github.com/RetroMusicPlayer/RetroMusicPlayer/releases');
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
