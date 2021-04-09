import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hemanth_dev/constants.dart';
import 'package:hemanth_dev/styles.dart';
import 'package:hemanth_dev/util.dart';

class AboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(42),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "About".toUpperCase(),
                  style: AppTextStyle.header1Style.copyWith(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  child: Text(
                    "My main focus is to develop an Android application with the latest Material Design along with Kotlin and Flutter in fact this website is built using Flutter.",
                    style: TextStyle(
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
                    style: TextStyle(
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
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.telegram,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        openUrl(telegramUrl);
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
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
    );
  }
}
