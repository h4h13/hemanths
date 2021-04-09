import 'package:flutter/material.dart';

class WorkMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Colors.grey[900],
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage("images/unnamed.webp"),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "I have more than 4 years for experience in Android development, recently I have been working on Flutter which takes very less time to develop multi-platform apps, I’m very happy to say I’m flutter developer now ",
                    style: TextStyle(
                      height: 1.5,
                      letterSpacing: 1.01,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                    ),
                    child: Text(
                      "Previously on my carrier",
                      style: Theme.of(context).textTheme.headline5.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16.0,
                      bottom: 8.0,
                    ),
                    child: Text(
                      "Android",
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.01,
                            wordSpacing: 2,
                            color: Colors.white,
                          ),
                    ),
                  ),
                  Text(
                    "I had more than 3 years of experience, My main specialty is mobile applications for Android in Kotlin and Java. This is my application designed and developed by me. This application completely built with a mind of Material Design guidelines",
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          height: 1.5,
                          letterSpacing: 1.01,
                          color: Colors.white,
                        ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  MaterialButton(
                    color: Colors.deepPurpleAccent,
                    onPressed: () {},
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
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.01,
                            wordSpacing: 2,
                            color: Colors.white,
                          ),
                    ),
                  ),
                  Text(
                    "This website is design by using Flutter, Like this style. I prefer Material Design, classic HTML, CSS, and little bit touch of JavaScript.",
                    style: TextStyle(
                      height: 1.5,
                      letterSpacing: 1.01,
                      color: Colors.white,
                      wordSpacing: 2,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
