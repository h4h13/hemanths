import 'package:flutter/material.dart';
import 'package:hemanth_dev/pages/retro_music.dart';

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
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 42,
          horizontal: 156,
        ),
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
                    child: Stack(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 96,
                              left: 42,
                              right: 42,
                              bottom: 42,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Work".toUpperCase(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        .fontSize,
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
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .fontSize,
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
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .fontSize,
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
                          ),
                        ),
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
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Image(
                        image: AssetImage("images/home.png"),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
