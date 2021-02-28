import 'package:flutter/material.dart';
import 'package:hemanth_dev/constants/colors.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      padding: const EdgeInsets.symmetric(
        horizontal: 70,
        vertical: 20,
      ),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1600),
        child: child,
      ),
    );
  }
}
