import 'package:flutter/material.dart';
import 'package:hemanth_dev/centered_view/centered_view.dart';
import 'package:hemanth_dev/constants/colors.dart';
import 'package:hemanth_dev/navigation_bar/navigation_bar.dart';
import 'package:hemanth_dev/pages/landing/components/user_details.dart';

class LandingDesktop extends StatelessWidget {
  const LandingDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          children: [
            NavigationBar(),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: UserDetails(),
                  ),
                  Expanded(
                    child: Card(
                      color: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/hemanth.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
