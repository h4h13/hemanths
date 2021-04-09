import 'package:flutter/material.dart';
import 'package:hemanth_dev/centered_view/centered_view.dart';
import 'package:hemanth_dev/navigation_bar/navigation_bar.dart';
import 'package:hemanth_dev/navigation_bar/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget child;

  const LayoutTemplate({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Stack(
        children: [
          Container(
            height: sizingInformation.screenSize.height,
            width: sizingInformation.screenSize.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/hemanth.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.75),
                  BlendMode.srcATop,
                ),
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
            body: sizingInformation.isMobile
                ? Column(
                    children: [
                      NavigationBar(),
                      Expanded(
                        child: child,
                      )
                    ],
                  )
                : CenteredView(
                    child: Column(
                      children: [
                        NavigationBar(),
                        Expanded(
                          child: child,
                        )
                      ],
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
