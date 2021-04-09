import 'package:flutter/material.dart';
import 'package:hemanth_dev/views/home/components/user_details.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: UserDetails(),
          ),
        ),
      );
    });
  }
}
