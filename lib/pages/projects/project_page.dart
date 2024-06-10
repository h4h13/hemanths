import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../constants.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({
    Key? key,
    required this.appName,
    required this.developerName,
    required this.rating,
    required this.downloads,
    required this.screenShots,
    required this.appDescription,
    required this.reviews,
    required this.appUrl,
    required this.appLogo,
    required this.buttons,
  }) : super(key: key);

  final String appName;
  final String developerName;
  final num rating;
  final num reviews;
  final num downloads;
  final List<String> screenShots;
  final List<Widget> buttons;
  final String appDescription;
  final String appUrl;
  final String appLogo;

  String convertNumber(num number) {
    return NumberFormat.compact().format(number);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Scaffold(
        appBar: AppBar(),
        body: ListView(
          shrinkWrap: true,
          children: [
            FractionallySizedBox(
              widthFactor: 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Image.asset(
                          appLogo,
                          height: 72,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                appName,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                developerName,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Highligths(
                        title: '$rating',
                        text: 'Rating',
                      ),
                      const VerticalDivider(),
                      Highligths(
                        title: convertNumber(downloads),
                        text: 'Downloads',
                      ),
                      const VerticalDivider(),
                      Highligths(
                        title: convertNumber(reviews),
                        text: 'Reveiws',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Wrap(
                    children: [
                      ElevatedButton.icon(
                        icon: const Icon(MdiIcons.googlePlay),
                        onPressed: () => launchUrlString(appUrl),
                        label: Text(
                          'google_play'.resolveString(),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          foregroundColor:
                              Theme.of(context).colorScheme.onPrimary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ...buttons
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 390,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: screenShots.length,
                      itemBuilder: (BuildContext context, int index) =>
                          PlayStoreScreenShot(
                        image: screenShots[index],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 16,
                          top: 16,
                          bottom: 16,
                        ),
                        child: Text(
                          'About this app ',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(),
                        ),
                      ),
                      const Icon(Icons.arrow_forward_outlined)
                    ],
                  ),
                  Text(
                    appDescription,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      tablet: Material(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 100),
          shrinkWrap: true,
          children: [
            FractionallySizedBox(
              widthFactor: 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    appName,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    developerName,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Highligths(
                          title: '$rating ★',
                          text: '${convertNumber(reviews)} Reveiws'),
                      const VerticalDivider(),
                      Highligths(
                          title: convertNumber(downloads), text: 'Downloads'),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.download_rounded),
                    onPressed: () => launchUrlString(appUrl),
                    label: Text(
                      'google_play'.resolveString(),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: screenShots
                          .map((e) => PlayStoreScreenShot(
                                image: e,
                              ))
                          .toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 16,
                          top: 16,
                          bottom: 16,
                        ),
                        child: Text(
                          'About this app ',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(),
                        ),
                      ),
                      const Icon(Icons.arrow_forward_outlined)
                    ],
                  ),
                  Text(
                    appDescription,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Highligths extends StatelessWidget {
  const Highligths({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Text(title),
          Text(text),
        ],
      ),
    );
  }
}

class PlayStoreScreenShot extends StatelessWidget {
  const PlayStoreScreenShot({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        clipBehavior: Clip.antiAlias,
        child: Image.asset(image),
      ),
      tablet: SizedBox(
        width: 220,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(image),
        ),
      ),
    );
  }
}
