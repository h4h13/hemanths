import 'package:flutter/material.dart';

final Map<String, dynamic> _mapStrings = {
  'carrier': 'Carrier',
  'carrier_description':
      'More than 5 years of experience in Mobile development, currently working as flutter developer in Kotak Securities',
  'welcome_name': 'I\'m Hemanth',
  'name': 'Hemanth S',
  'description': 'Flutter & Android Developer from Bangalore, India',
  'projects': 'Projects',
  'history': 'History',
  'contact': 'Contact',
  'about_me': 'About me',
  'retro_music': 'Retro Music Player',
  'retro_music_descripton':
      'The best Material Design offline music player for Android ',
  'google_play': 'Google play',
  'github': 'Github',
  'scroll': 'Scroll',
  'hello': 'Hello,',
};

final darkTheme = ThemeData(
  fontFamily: "Product Sans",
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: Colors.deepPurple.shade200,
    secondary: Colors.deepPurpleAccent.shade100,
    onSecondary: Colors.black,
  ),
);
final whiteTheme = ThemeData(
  fontFamily: "Product Sans",
  colorScheme: ColorScheme.light(
    primary: Colors.purple.shade400,
    secondary: Colors.purple.shade200,
  ),
);

extension StringResolve on String {
  String resolveString() {
    return _mapStrings[this] as String;
  }
}

const paisaAppDesctiption = '''Initial release''';
const retroAppDescription = '''It will become your favorite music player ♥

🧭Navigation never made easier
Self-explanatory interface without overloaded menus.

🎨Colorful
You can choose between three different main themes: Clearly white, Kind dark and Just black for AMOLED displays. Select
your favorite accent color from a color palette.

🏠Home
Where you can have your recently/ top played Artists, Albums and Favorite Songs. No other music player has this feature

📦Included Features
⭐ Base 3 themes (Clearly white, Kinda dark and Just Black)
⭐ Choose from 10+ now playing themes
⭐ Drive Mode
⭐ Headset/Bluetooth support
⭐ Music Duration Filter
⭐ Folder support - Play song by folder
⭐ Gapless playback
⭐ Volume controls
⭐ Carousel effect for an album cover
⭐ Homescreen Widgets
⭐ Lock Screen Playback Controls
⭐ Lyrics Screen(download and sync with music)
⭐ Sleep Timer
⭐ Homescreen Widgets
⭐ Easy Drag to Sort Playlist & Play Queue
⭐ Tag editor
⭐ Create, Edit, Import playlists
⭐ Playing queue with reorder
⭐ User profile
⭐ 30 Languages support
⭐ Browse and play your music by Songs, Albums, Artists, Playlists, Genre
⭐ Smart Auto Playlists - Recently played/Top Played/History Fully playlist support & Build your own playlist on the go

We are trying our best to bring you the best user experience. Until now it is a beta version - bug fixes (if any) and more features are on the way.

In any case, you find or notice any Bugs/ Crashes please report them by sending us an e-mail. We will respond or fix Bugs/ Crashes as soon as possible and if you have any Features/ Suggestions in mind please Follow below links to support

Telegram: https://t.me/retromusicapp
Github: https://github.com/h4h13/RetroMusicPlayer

Licenses for the album covers used in the screenshots:

https://unsplash.com/photos/aWXVxy8BSzc
https://unsplash.com/photos/JAHdPHMoaEA
https://unsplash.com/photos/D_LYjtHnDXE
https://unsplash.com/photos/49wtmkUVmFQ
https://unsplash.com/photos/wnX-fXzB6Cw
https://unsplash.com/photos/c-NBiJrhwdM


Please note:
Retro Music player is offline local mp3 player app. It don't support online music download or music streaming.''';
