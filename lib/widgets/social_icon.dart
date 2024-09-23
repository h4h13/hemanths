import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:flutter_hemanth_dev/constants.dart';
import 'package:flutter_hemanth_dev/main.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    super.key,
    required this.alignment,
  });

  final MainAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Row(
        mainAxisAlignment: alignment,
        children: <Widget>[
          SocialIcon(
            data: MdiIcons.github,
            onPressed: () => openUrl(githubUrl),
            color: Theme.of(context).colorScheme.primary,
          ),
          SocialIcon(
            data: MdiIcons.linkedin,
            onPressed: () => openUrl(linkedInUtl),
            color: Theme.of(context).colorScheme.primary,
          ),
          SocialIcon(
            data: MdiIcons.message,
            onPressed: () => openUrl(telegramUrl),
            color: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final IconData data;
  final VoidCallback onPressed;
  final double iconSize = 28;
  final Color color;
  const SocialIcon({
    super.key,
    required this.data,
    required this.onPressed,
    required this.color,
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
    );
  }
}
