import 'package:flutter/material.dart';
import 'package:hemanth_dev/views/home/components/user_details.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: UserDetails(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
