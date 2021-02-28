import 'package:flutter/material.dart';
import 'package:hemanth_dev/pages/retro_music.dart';
import 'package:hemanth_dev/styles.dart';

class WorkPage extends StatefulWidget {
  static var routeName = "/work";

  @override
  _WorkPageState createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: size.width <= 800
          ? buildMobileLayoutContainer(context)
          : buildBigScreenLayoutContainer(context),
    );
  }

  buildMobileLayoutContainer(BuildContext context) {
    return Hero(
      tag: "Card",
      child: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Image(
                      image: AssetImage("images/home.png"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Work".toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                              Theme.of(context).textTheme.headline6.fontSize,
                          letterSpacing: 8,
                        ),
                      ),
                      Text(
                        "More than 4 years of exprience in Android development",
                        style: TextStyle(
                          height: 1.5,
                          letterSpacing: 1.1,
                          wordSpacing: 3,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          "Android",
                          style: TextStyle(
                            fontSize:
                                Theme.of(context).textTheme.headline6.fontSize,
                            letterSpacing: 1.2,
                            wordSpacing: 3,
                          ),
                        ),
                      ),
                      Text(
                        "My main specialty is mobile applications for Android in Kotlin, Flutter and Java.",
                        style: TextStyle(
                          height: 1.5,
                          letterSpacing: 1.1,
                          wordSpacing: 3,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          "Web",
                          style: TextStyle(
                            fontSize:
                                Theme.of(context).textTheme.headline6.fontSize,
                            letterSpacing: 1.2,
                            wordSpacing: 3,
                          ),
                        ),
                      ),
                      Text(
                        "Like this website. I prefer classic HTML, CSS, and JavaScript.",
                        style: TextStyle(
                          height: 1.5,
                          letterSpacing: 1.1,
                          wordSpacing: 3,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      MaterialButton(
                        color: Theme.of(context).accentColor,
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 42,
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            RetroMusic.routeName,
                          );
                        },
                        child: Text(
                          "Retro Music Player".toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      )
                    ],
                  ),
                )
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
      ),
    );
  }

  buildBigScreenLayoutContainer(BuildContext context) {
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(42),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Carrier".toUpperCase(),
                                    style: AppTextStyle.header1Style,
                                  ),
                                  Text(
                                    "I have more than 4 years for experience in Android development, recently I have been working on Flutter which takes very less time to develop multi-platform apps, I’m very happy to say I’m flutter developer now ",
                                    style: TextStyle(
                                      height: 1.5,
                                      letterSpacing: 1.01,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 16,
                                    ),
                                    child: Text(
                                      "Previously on my carrier",
                                      style:
                                          Theme.of(context).textTheme.headline5,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 16.0,
                                      bottom: 8.0,
                                    ),
                                    child: Text(
                                      "Android",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.01,
                                            wordSpacing: 2,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    "I had more than 3 years of experience, My main specialty is mobile applications for Android in Kotlin and Java. This is my application designed and developed by me. This application completely built with a mind of Material Design guidelines",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(
                                          height: 1.5,
                                          letterSpacing: 1.01,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  MaterialButton(
                                    color: Colors.deepPurpleAccent,
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(
                                        RetroMusic.routeName,
                                      );
                                    },
                                    child: Text(
                                      "Retro Music Player",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 16.0,
                                      bottom: 8.0,
                                    ),
                                    child: Text(
                                      "Web",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.01,
                                            wordSpacing: 2,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    "This website is design by using Flutter, Like this style. I prefer Material Design, classic HTML, CSS, and little bit touch of JavaScript.",
                                    style: TextStyle(
                                      height: 1.5,
                                      letterSpacing: 1.01,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/unnamed.webp"),
                              fit: BoxFit.cover,
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
