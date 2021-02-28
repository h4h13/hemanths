import 'package:flutter/material.dart';
import 'package:hemanth_dev/navigation_bar/navbar_logo.dart';
import 'package:hemanth_dev/navigation_bar/navbar_item/navbar_item.dart';
import 'package:hemanth_dev/routing/route_name.dart';

class NavigationBarDesktop extends StatelessWidget {
  const NavigationBarDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationBarLogo(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
