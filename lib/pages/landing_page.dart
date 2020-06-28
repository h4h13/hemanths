import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hemanth_dev/constants.dart';
import 'package:hemanth_dev/pages/about_page.dart';
import 'package:hemanth_dev/pages/work_page.dart';
import 'package:hemanth_dev/util.dart';

class LandingPage extends StatelessWidget {
  static var routeName = "/";

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
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("images/hemanth.jpg"),
        fit: BoxFit.cover,
        colorFilter: new ColorFilter.mode(
          Colors.black.withOpacity(0.35),
          BlendMode.srcATop,
        ),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Hemanth Savarala".toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Theme.of(context).textTheme.headline3.fontSize,
              letterSpacing: 8,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
            ),
            child: Text(
              "Android Developer".toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.subtitle1.fontSize,
                color: Colors.white,
                letterSpacing: 1.2,
                wordSpacing: 3,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'An enthusiastic Android developer working with Java, Kotlin, Flutter',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.bodyText1.fontSize,
              height: 1.5,
              letterSpacing: 1.1,
              wordSpacing: 3,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    openUrl(twitterUrl);
                  },
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    openUrl(githubUrl);
                  },
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    openUrl(linkedInUtl);
                  },
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    openUrl(instagramUrl);
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlineButton(
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AboutPage.routeName,
                  );
                },
                child: Text(
                  "About".toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 42,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              OutlineButton(
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.white,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 42,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    WorkPage.routeName,
                  );
                },
                child: Text(
                  "Work".toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

buildBigScreenLayoutContainer(BuildContext context) {
  return Container(
    color: Theme.of(context).primaryColor,
    child: Padding(
      padding: const EdgeInsets.only(
        left: 114,
        top: 42,
        bottom: 42,
        right: 156,
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
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(42),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SelectableText(
                            "Hemanth Savarala".toUpperCase(),
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
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Text(
                              "Android Developer",
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
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            'Enthusiastic Android developer working with Java, Kotlin, Flutter',
                            style: TextStyle(
                              height: 1.5,
                              letterSpacing: 1.1,
                              wordSpacing: 3,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(FontAwesomeIcons.twitter),
                                  onPressed: () {
                                    openUrl(twitterUrl);
                                  },
                                ),
                                IconButton(
                                  icon: Icon(FontAwesomeIcons.github),
                                  onPressed: () {
                                    openUrl(githubUrl);
                                  },
                                ),
                                IconButton(
                                  icon: Icon(FontAwesomeIcons.linkedin),
                                  onPressed: () {
                                    openUrl(linkedInUtl);
                                  },
                                ),
                                IconButton(
                                  icon: Icon(FontAwesomeIcons.instagram),
                                  onPressed: () {
                                    openUrl(instagramUrl);
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: <Widget>[
                              MaterialButton(
                                color: Theme.of(context).primaryColor,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 16,
                                  horizontal: 42,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pushNamed(
                                    WorkPage.routeName,
                                  );
                                },
                                child: Text(
                                  "Carrier".toUpperCase(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              OutlineButton(
                                borderSide: BorderSide(
                                  width: 4,
                                  color: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .color,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pushNamed(
                                    AboutPage.routeName,
                                  );
                                },
                                child: Text(
                                  "About".toUpperCase(),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 16,
                                  horizontal: 42,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ],
                          )
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
                      image: AssetImage("images/hemanth.jpg"),
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
  );
}
