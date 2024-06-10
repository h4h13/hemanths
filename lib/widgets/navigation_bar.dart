import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../app_routes.dart';
import '../pages/home/home_page.dart';

class TabBarNavigation extends StatefulWidget {
  const TabBarNavigation({
    Key? key,
  }) : super(key: key);

  @override
  State<TabBarNavigation> createState() => _TabBarNavigationState();
}

class _TabBarNavigationState extends State<TabBarNavigation> {
  int index = 0;
  void onHighlight(String route) {
    switch (route) {
      case home:
        changeHighlight(0);
        break;
      case retroMucicApp:
        changeHighlight(1);
        break;
      case paiseApp:
        changeHighlight(2);
        break;
    }
  }

  void changeHighlight(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const SizedBox.shrink(),
      tablet: SafeArea(
        child: FractionallySizedBox(
          widthFactor: 0.9,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
            ),
            child: Row(
              children: [
                const Spacer(),
                _TabeItem(
                  title: 'Home',
                  appRoute: home,
                  selected: index == 0,
                  onPress: onHighlight,
                ),
                _TabeItem(
                  title: 'Retro Music',
                  appRoute: retroMucicApp,
                  selected: index == 1,
                  onPress: onHighlight,
                ),
                _TabeItem(
                  title: 'Paisa',
                  appRoute: paiseApp,
                  selected: index == 2,
                  onPress: onHighlight,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TabeItem extends StatefulWidget {
  const _TabeItem({
    Key? key,
    required this.title,
    required this.appRoute,
    required this.selected,
    required this.onPress,
  }) : super(key: key);

  final bool selected;
  final String title;
  final String appRoute;
  final Function(String appRoute) onPress;

  @override
  State<_TabeItem> createState() => _TabeItemState();
}

class _TabeItemState extends State<_TabeItem> {
  Color _getColor() {
    if (widget.selected) {
      return Theme.of(context).colorScheme.secondary;
    } else {
      return Theme.of(context).colorScheme.onSurface;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onPress(widget.appRoute);
        navigatorKey.currentState!.pushNamed(widget.appRoute);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Text(
          widget.title,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: _getColor(),
              ),
        ),
      ),
    );
  }
}
