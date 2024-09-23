import 'package:flutter/material.dart';

import 'package:flutter_hemanth_dev/constants.dart';

class ScrollWidget extends StatelessWidget {
  const ScrollWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Text(
            'scroll'.resolveString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Icon(Icons.keyboard_arrow_down_rounded),
        ],
      ),
    );
  }
}
