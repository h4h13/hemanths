import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'package:flutter_hemanth_dev/constants.dart';
import 'package:flutter_hemanth_dev/data/data_manager.dart';
import 'package:flutter_hemanth_dev/pages/projects/project_page.dart';

class RetroMusicPage extends StatelessWidget {
  const RetroMusicPage({super.key});

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
          icon: Icon(MdiIcons.download),
          onPressed: () {
            launchUrlString(retroMusicProject.appUrl);
          },
          label: Text(
            'download'.resolveString(),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
