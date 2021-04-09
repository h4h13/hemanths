import 'package:flutter/material.dart';
import 'package:hemanth_dev/styles.dart';

class AboutTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: buildBigScreenLayoutContainer(context),
    );
  }
}

Widget aboutMeImage() {
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

Widget buildBigScreenLayoutContainer(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: Hero(
          tag: "Card",
          child: Card(
            color: Colors.grey[900],
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
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                              ),
                              child: Text(
                                "My main focus is to develop an Android application with the latest Material Design along with Kotlin and Flutter in fact this website is built using Flutter.",
                                style: AppTextStyle.header6Style.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                              ),
                              child: Text(
                                "I currently work as Senior Software Developer at Zedeye labs in Bangalore as a Flutter engineer",
                                style: AppTextStyle.header6Style.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                              ),
                              child: Text(
                                "My non-professional interest includes long rides in Royal Enfield and Backpack traveller",
                                style: AppTextStyle.header6Style.copyWith(
                                  color: Colors.white,
                                ),
                              ),
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
  );
}
