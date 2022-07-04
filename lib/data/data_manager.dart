import '../constants.dart';

class Project {
  final String name;
  final String desc;
  final List<String> images;
  final num rating;
  final num downloads;
  final String developerName;
  final num reviews;
  final String appLogo;
  final String appUrl;
  final String playStoreUrl;

  Project({
    required this.name,
    required this.desc,
    required this.images,
    required this.rating,
    required this.downloads,
    required this.developerName,
    required this.reviews,
    required this.appLogo,
    required this.appUrl,
    required this.playStoreUrl,
  });
}

final retroMusicProject = Project(
  name: 'Retro Music',
  desc: retroAppDescription,
  developerName: 'Hemanth Savarala',
  images: [
    'assets/images/retro_1.png',
    'assets/images/retro_2.png',
    'assets/images/retro_3.png',
    'assets/images/retro_4.png',
    'assets/images/retro_5.png',
    'assets/images/retro_6.png',
    'assets/images/retro_7.png',
  ],
  rating: 4.4,
  downloads: 2800000,
  reviews: 64000,
  appLogo: 'assets/images/retro_logo.png',
  appUrl: 'https://github.com/RetroMusicPlayer/RetroMusicPlayer',
  playStoreUrl:
      'https://play.google.com/store/apps/details?id=code.name.monkey.retromusic',
);

final paisaProject = Project(
  name: 'Paisa - Expense Manager',
  desc: paisaAppDesctiption,
  developerName: 'Hemanth Savarala',
  images: [
    'assets/images/paisa_1.png',
    'assets/images/paisa_2.png',
    'assets/images/paisa_3.png',
    'assets/images/paisa_4.png',
    'assets/images/paisa_5.png',
    'assets/images/paisa_6.png',
    'assets/images/paisa_7.png',
    'assets/images/paisa_8.png',
  ],
  rating: 4.6,
  downloads: 500,
  reviews: 3,
  appLogo: 'assets/images/paisa_logo.png',
  appUrl: 'https://github.com/h4h13/paisa',
  playStoreUrl:
      'https://play.google.com/store/apps/details?id=dev.hemanths.paisa',
);
