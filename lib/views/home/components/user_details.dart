import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hemanth_dev/constants.dart';
import 'package:hemanth_dev/util.dart';
import 'package:hemanth_dev/widgets/social_icon.dart';
import 'package:responsive_builder/responsive_builder.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        final imSize = sizingInformation.isMobile
            ? Theme.of(context).textTheme.headline2
            : Theme.of(context).textTheme.headline1;

        final nameSize = sizingInformation.isMobile
            ? Theme.of(context).textTheme.headline2
            : Theme.of(context).textTheme.headline1;

        final androidDeveloperSize = sizingInformation.isMobile
            ? Theme.of(context).textTheme.headline6
            : Theme.of(context).textTheme.headline4;
        final textColor = Colors.white;
        final imColor = sizingInformation.isMobile
            ? Colors.white.withOpacity(0.65)
            : Colors.grey[700];
        final padding =
            sizingInformation.isMobile ? EdgeInsets.all(8) : EdgeInsets.all(0);
        return Padding(
          padding: padding,
          child: Container(
            width: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 22,
                ),
                RichText(
                  text: TextSpan(
                    text: 'I\'m\n',
                    style: imSize.copyWith(
                      fontWeight: FontWeight.bold,
                      color: imColor,
                    ),
                    children: [
                      TextSpan(
                        text: 'Hemanth S',
                        style: nameSize.copyWith(
                          fontWeight: FontWeight.bold,
                          color: textColor,
                          height: 0.8,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: 72,
                  height: 8,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 22,
                ),
                Text(
                  'Android Developer based in Bangalore, currently working at ZedEye Labs',
                  style: androidDeveloperSize.copyWith(
                    color: textColor.withOpacity(0.75),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                    children: <Widget>[
                      SocialIcon(
                        data: FontAwesomeIcons.twitter,
                        onPressed: () => openUrl(twitterUrl),
                        color: Colors.grey,
                      ),
                      SocialIcon(
                        data: FontAwesomeIcons.github,
                        onPressed: () => openUrl(githubUrl),
                        color: Colors.grey,
                      ),
                      SocialIcon(
                        data: FontAwesomeIcons.linkedin,
                        onPressed: () => openUrl(linkedInUtl),
                        color: Colors.grey,
                      ),
                      SocialIcon(
                        data: FontAwesomeIcons.instagram,
                        onPressed: () => openUrl(instagramUrl),
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
