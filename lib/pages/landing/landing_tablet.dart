import 'package:flutter/material.dart';
import 'package:hemanth_dev/navigation_bar/navigation_bar.dart';
import 'package:hemanth_dev/pages/landing/components/user_details.dart';

class LandingTablet extends StatelessWidget {
  const LandingTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      child: Material(
        child: Column(
          children: [
            NavigationBar(),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: UserDetails(),
            ),
          ],
        ),
      ),
    );
  }
}
