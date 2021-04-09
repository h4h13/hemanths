import 'package:flutter/material.dart';
import 'package:hemanth_dev/extensions/hover_extension.dart';

class SocialIcon extends StatelessWidget {
  final IconData data;
  final Function onPressed;
  final double iconSize = 28;
  final Color color;
  const SocialIcon({
    this.data,
    this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: GestureDetector(
        onTap: onPressed,
        child: Icon(
          data,
          size: iconSize,
          color: color,
        ),
      ),
    ).mouseUpOnHOver.showCursorOnHover;
  }
}
