import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hemanth_dev/constants.dart';
import 'package:hemanth_dev/util.dart';

class AboutPage extends StatelessWidget {
  static var routeName = "/about";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: size.width <= 800
          ? buildMobileLayoutContainer(context)
          : buildBigScreenLayoutContainer(context),
    );
  }
}

buildMobileLayoutContainer(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Expanded(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 72,
                    left: 14,
                    right: 14,
                    bottom: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        "About".toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                              Theme.of(context).textTheme.headline6.fontSize,
                          letterSpacing: 4,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                        child: Text(
                          "My main focus is to develop an Android application with latest Material Design along with Kotlin and Flutter in fact this website is built using Flutter.",
                          style: TextStyle(
                            height: 1.5,
                            letterSpacing: 1.1,
                            wordSpacing: 3,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                        child: Text(
                          "I currently work as Senior Software Developer at Zedeye labs in Bangalore, as Flutter engineer",
                          style: TextStyle(
                            height: 1.5,
                            letterSpacing: 1.1,
                            wordSpacing: 3,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                        child: Text(
                          "My non-professional interest includes long rides in Royal Enfield and Backpack traveller",
                          style: TextStyle(
                            height: 1.5,
                            letterSpacing: 1.1,
                            wordSpacing: 3,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(FontAwesomeIcons.telegram),
                            onPressed: () {
                              openUrl(telegramUrl);
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.mail),
                            onPressed: () {
                              openUrl(email);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
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
            ],
          ),
        ),
      ),
      aboutMeImage()
    ],
  );
}

aboutMeImage() {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/about_me.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

buildBigScreenLayoutContainer(BuildContext context) {
  return Container(
    color: Colors.blue,
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
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(42),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Text(
                                  "About".toUpperCase(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        .fontSize,
                                    letterSpacing: 8,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                  ),
                                  child: Text(
                                    "My main focus is to develop an Android application with the latest Material Design along with Kotlin and Flutter in fact this website is built using Flutter.",
                                    style: TextStyle(
                                      height: 1.5,
                                      letterSpacing: 1.1,
                                      wordSpacing: 3,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                  ),
                                  child: Text(
                                    "I currently work as Senior Software Developer at Zedeye labs in Bangalore as a Flutter engineer",
                                    style: TextStyle(
                                      height: 1.5,
                                      letterSpacing: 1.1,
                                      wordSpacing: 3,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                  ),
                                  child: Text(
                                    "My non-professional interest includes long rides in Royal Enfield and Backpack traveller",
                                    style: TextStyle(
                                      height: 1.5,
                                      letterSpacing: 1.1,
                                      wordSpacing: 3,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(FontAwesomeIcons.telegram),
                                      onPressed: () {
                                        openUrl(telegramUrl);
                                      },
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.mail),
                                      onPressed: () {
                                        openUrl(email);
                                      },
                                    ),
                                  ],
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
                            image: AssetImage("images/about_me.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
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
