import 'package:flutter/material.dart';
import 'package:hemanth_dev/constants/colors.dart';
import 'package:hemanth_dev/views/home/components/user_details.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Row(
        children: <Widget>[
          Expanded(
            child: UserDetails(),
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
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
            ),
          )
        ],
      ),
    );
  }
}
