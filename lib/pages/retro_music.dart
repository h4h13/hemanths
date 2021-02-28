import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hemanth_dev/constants.dart';
import 'package:hemanth_dev/styles.dart';
import 'package:hemanth_dev/util.dart';

class RetroMusic extends StatelessWidget {
  static var routeName = "/retro-music";

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      height: 1.5,
      letterSpacing: 1.01,
      wordSpacing: 2,
    );
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: size.width <= 800
          ? buildMobileLayoutContainer(context, textStyle)
          : buildBigScreenLayoutContainer(context, textStyle),
    );
  }

  buildMobileLayoutContainer(
    BuildContext context,
    TextStyle textStyle,
  ) {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.width,
                child: Center(
                  child: Image(
                    image: AssetImage("images/now_playing.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Retro Music Player",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:
                            Theme.of(context).textTheme.headline5.fontSize,
                        letterSpacing: 3,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      child: Text(
                        "New Material Desing Music player for Android",
                        style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.subtitle2.fontSize,
                          fontWeight: FontWeight.bold,
                          height: 2,
                          letterSpacing: 1.1,
                          wordSpacing: 2,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      child: Text(
                        "Self-explanatory interface without overloaded menus. You can choose between three different main themes: Clearly white, Kind dark and Just black for AMOLED displays. Select your favorite accent color from a color palette.",
                        style: textStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      child: Text(
                        "Where you can have your recently/ top played Artists, Albums and Favorite Songs. No other music player has this feature",
                        style: textStyle,
                      ),
                    ),
                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "Included Features",
                            style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .fontSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "⭐️ Base 3 themes (Clearly white, Kinda dark and Just Black)",
                          style: textStyle,
                        ),
                        Text(
                          "⭐️ Choose from 10+ now playing themes",
                          style: textStyle,
                        ),
                        Text(
                          "⭐ ️Drive Mode",
                          style: textStyle,
                        ),
                        Text(
                          "⭐️ Headset/Bluetooth support",
                          style: textStyle,
                        ),
                        Text(
                          "⭐ ️Music Duration Filter",
                          style: textStyle,
                        ),
                        Text(
                          "⭐ ️Folder support - Play song by folder",
                          style: textStyle,
                        ),
                        Text(
                          "⭐ ️Gapless playback ",
                          style: textStyle,
                        ),
                        Text(
                          "⭐ ️More than 10 Now playing themes",
                          style: textStyle,
                        ),
                        Text(
                          "⭐️ Smart Auto Playlists - Recently/ Top Played/ History Fully playlist support & Build your own playlist on the go",
                          style: textStyle,
                        ),
                        Text(
                          "⭐️ Browse and play your music by Albums, Artists, Playlists, Genre",
                          style: textStyle,
                        ),
                        Text(
                          "⭐️ Easy Drag to Sort Playlist & Play Queue",
                          style: textStyle,
                        ),
                        Text(
                          "and more...",
                          style: textStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Download",
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.subtitle2.fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(FontAwesomeIcons.googlePlay),
                          onPressed: () {
                            openUrl(retroMusicPlayStoreUrl);
                          },
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.github),
                          onPressed: () {
                            openUrl(retroMusicGithubUrl);
                          },
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.instagram),
                          onPressed: () {
                            openUrl(retroMusicInstagramUrl);
                          },
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.twitter),
                          onPressed: () {
                            openUrl(retroMusicTwitterUrl);
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(Icons.arrow_back),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ],
    );
  }

  buildBigScreenLayoutContainer(
    BuildContext context,
    TextStyle textStyle,
  ) {
    return Container(
      color: Colors.deepPurpleAccent,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 114,
          top: 42,
          bottom: 42,
          right: 156,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Expanded(
              child: Hero(
                tag: "Card",
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  elevation: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(42),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Retro Music Player".toUpperCase(),
                                  style: AppTextStyle.header1Style,
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                  ),
                                  child: Text(
                                    "New Material Design Music player for Android",
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                  ),
                                  child: Text(
                                    "Self-explanatory interface without overloaded menus. You can choose between three different main themes: Clearly white, Kind dark and Just black for AMOLED displays. Select your favorite accent color from a color palette.",
                                    style: textStyle,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                  ),
                                  child: Text(
                                    "Where you can have your recently/ top played Artists, Albums and Favorite Songs. No other music player has this feature",
                                    style: textStyle,
                                  ),
                                ),
                                ListView(
                                  shrinkWrap: true,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Text(
                                        "Included Features",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5,
                                      ),
                                    ),
                                    Text(
                                      "⭐️ Base 3 themes (Clearly white, Kinda dark and Just Black)",
                                      style: textStyle,
                                    ),
                                    Text(
                                      "⭐️ Choose from 10+ now playing themes",
                                      style: textStyle,
                                    ),
                                    Text(
                                      "⭐ ️Drive Mode",
                                      style: textStyle,
                                    ),
                                    Text(
                                      "⭐️ Headset/Bluetooth support",
                                      style: textStyle,
                                    ),
                                    Text(
                                      "⭐ ️Music Duration Filter",
                                      style: textStyle,
                                    ),
                                    Text(
                                      "⭐ ️Folder support - Play song by folder",
                                      style: textStyle,
                                    ),
                                    Text(
                                      "⭐ ️Gapless playback ",
                                      style: textStyle,
                                    ),
                                    Text(
                                      "⭐ ️More than 10 Now playing themes",
                                      style: textStyle,
                                    ),
                                    Text(
                                      "⭐️ Smart Auto Playlists - Recently/ Top Played/ History Fully playlist support & Build your own playlist on the go",
                                      style: textStyle,
                                    ),
                                    Text(
                                      "⭐️ Browse and play your music by Albums, Artists, Playlists, Genre",
                                      style: textStyle,
                                    ),
                                    Text(
                                      "⭐️ Easy Drag to Sort Playlist & Play Queue",
                                      style: textStyle,
                                    ),
                                    Text(
                                      "and more...",
                                      style: textStyle,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "Download",
                                  style: TextStyle(
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .fontSize,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(FontAwesomeIcons.googlePlay),
                                      onPressed: () {
                                        openUrl(retroMusicPlayStoreUrl);
                                      },
                                    ),
                                    IconButton(
                                      icon: Icon(FontAwesomeIcons.github),
                                      onPressed: () {
                                        openUrl(retroMusicGithubUrl);
                                      },
                                    ),
                                    IconButton(
                                      icon: Icon(FontAwesomeIcons.instagram),
                                      onPressed: () {
                                        openUrl(retroMusicInstagramUrl);
                                      },
                                    ),
                                    IconButton(
                                      icon: Icon(FontAwesomeIcons.twitter),
                                      onPressed: () {
                                        openUrl(retroMusicTwitterUrl);
                                      },
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Center(
                            child: Image(
                              image: AssetImage("images/now_playing.png"),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
