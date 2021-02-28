import 'package:flutter/material.dart';
import 'package:hemanth_dev/navigation_bar/navbar_logo.dart';
import 'package:hemanth_dev/navigation_bar/navbar_item/navbar_item.dart';
import 'package:hemanth_dev/routing/route_name.dart';

class NavigationBarTablet extends StatelessWidget {
  const NavigationBarTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 70,
        vertical: 20,
      ),
      child: Container(
        height: 100,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavigationBarLogo(),
            Wrap(
              children: [
                NavBarItem(
                  'Home',
                  HomeRoute,
                  icon: Icons.home,
                ),
                SizedBox(
                  width: 60,
                ),
                NavBarItem(
                  'Projects',
                  HomeRoute,
                  icon: Icons.home,
                ),
                SizedBox(
                  width: 60,
                ),
                NavBarItem(
                  'Contact',
                  HomeRoute,
                  icon: Icons.home,
                ),
                SizedBox(
                  width: 60,
                ),
                NavBarItem(
                  'About',
                  HomeRoute,
                  icon: Icons.home,
                ),
                SizedBox(
                  width: 60,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
