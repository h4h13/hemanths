import 'package:flutter/material.dart';
import 'package:hemanth_dev/navigation_bar/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              if (Scaffold.hasDrawer(context)) {
                Scaffold.of(context).openDrawer();
              }
            },
          ),
          SizedBox(
            child: NavigationBarLogo(),
            width: 52,
            height: 52,
          ),
        ],
      ),
    );
  }
}
