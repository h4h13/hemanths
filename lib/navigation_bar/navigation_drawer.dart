import 'package:flutter/material.dart';
import 'package:hemanth_dev/navigation_bar/navbar_item/navbar_item.dart';
import 'package:hemanth_dev/routing/route_name.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey[900],
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            NavBarItem(
              'Home',
              HomeRoute,
              icon: Icons.home_rounded,
            ),
            NavBarItem(
              'Projects',
              ProjectRoute,
              icon: Icons.portrait_rounded,
            ),
            NavBarItem(
              'Contact',
              ContactRoute,
              icon: Icons.contact_mail_rounded,
            ),
            NavBarItem(
              'About',
              AboutRoute,
              icon: Icons.info_outline_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
