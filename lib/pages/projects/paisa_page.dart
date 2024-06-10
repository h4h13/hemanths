import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../constants.dart';
import '../../data/data_manager.dart';
import 'project_page.dart';

class PaisaPage extends StatelessWidget {
  const PaisaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectsPage(
      appName: paisaProject.name,
      developerName: paisaProject.developerName,
      rating: paisaProject.rating,
      downloads: paisaProject.downloads,
      reviews: paisaProject.reviews,
      screenShots: paisaProject.images,
      appDescription: paisaProject.desc,
      appLogo: paisaProject.appLogo,
      appUrl: paisaProject.playStoreUrl,
      buttons: [
        ElevatedButton.icon(
          icon: const Icon(Icons.download_rounded),
          onPressed: () {
            launchUrlString(paisaProject.appUrl);
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
