import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants.dart';

class RetroMusicPage extends StatelessWidget {
  const RetroMusicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        padding: const EdgeInsets.only(top: 100),
        shrinkWrap: true,
        children: [
          FractionallySizedBox(
            widthFactor: 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Retro Music',
                  style: Theme.of(context).primaryTextTheme.headline3?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Hemanth Savarala',
                  style: Theme.of(context).primaryTextTheme.headline6?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: const [
                    Highligths(title: '4.4★', text: '62k Reveiws'),
                    VerticalDivider(),
                    Highligths(title: '2.5mil', text: 'Downloads'),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.download_rounded),
                  onPressed: () {
                    launch(
                        'https://play.google.com/store/apps/details?id=code.name.monkey.retromusic');
                  },
                  label: Text(
                    'Google Play',
                    style:
                        Theme.of(context).primaryTextTheme.headline6?.copyWith(
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
                const SizedBox(
                  height: 16,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      PlayStoreScreenShot(
                          image: 'assets/images/now_player.png'),
                      PlayStoreScreenShot(
                          image: 'assets/images/now_player.png'),
                      PlayStoreScreenShot(
                          image: 'assets/images/now_player.png'),
                      PlayStoreScreenShot(
                          image: 'assets/images/now_player.png'),
                      PlayStoreScreenShot(
                          image: 'assets/images/now_player.png'),
                      PlayStoreScreenShot(
                          image: 'assets/images/now_player.png'),
                      PlayStoreScreenShot(
                          image: 'assets/images/now_player.png'),
                      PlayStoreScreenShot(
                          image: 'assets/images/now_player.png'),
                    ],
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
                            .primaryTextTheme
                            .headline5
                            ?.copyWith(),
                      ),
                    ),
                    const Icon(Icons.arrow_forward_outlined)
                  ],
                ),
                Text(
                  retroAppDescription,
                  style:
                      Theme.of(context).primaryTextTheme.subtitle1?.copyWith(),
                )
              ],
            ),
          ),
        ],
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
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: 200,
        child: AspectRatio(
          aspectRatio: 10 / 21,
          child: Image.asset(image),
        ),
      ),
    );
  }
}
