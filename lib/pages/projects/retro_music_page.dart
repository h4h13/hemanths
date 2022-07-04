import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../constants.dart';
import '../../data/data_manager.dart';
import 'project_page.dart';

class RetroMusicPage extends StatelessWidget {
  const RetroMusicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectsPage(
      appName: retroMusicProject.name,
      developerName: retroMusicProject.developerName,
      rating: retroMusicProject.rating,
      downloads: retroMusicProject.downloads,
      reviews: retroMusicProject.reviews,
      screenShots: retroMusicProject.images,
      appDescription: retroMusicProject.desc,
      appLogo: retroMusicProject.appLogo,
      appUrl: retroMusicProject.playStoreUrl,
      buttons: [
        ElevatedButton.icon(
          icon: const Icon(MdiIcons.download),
          onPressed: () {
            launchUrlString(retroMusicProject.appUrl);
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
