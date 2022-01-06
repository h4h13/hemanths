import 'package:flutter/material.dart';
import '../main.dart';
import '../pages/home/home_page.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TabBarNavigation extends StatefulWidget {
  const TabBarNavigation({
    Key? key,
  }) : super(key: key);

  @override
  State<TabBarNavigation> createState() => _TabBarNavigationState();
}

class _TabBarNavigationState extends State<TabBarNavigation> {
  int index = 0;
  void onHighlight(AppRoutes route) {
    switch (route) {
      case AppRoutes.home:
        changeHighlight(0);
        break;
      case AppRoutes.project:
        changeHighlight(1);
        break;
      case AppRoutes.retroMucicApp:
        changeHighlight(2);
        break;
      case AppRoutes.paiseApp:
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
      mobile: SafeArea(
        child: IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(Icons.menu_rounded),
        ),
      ),
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
                  appRoute: AppRoutes.home,
                  selected: index == 0,
                  onPress: onHighlight,
                ),
                _TabeItem(
                  title: 'Work',
                  appRoute: AppRoutes.project,
                  selected: index == 1,
                  onPress: onHighlight,
                ),
                _TabeItem(
                  title: 'About',
                  appRoute: AppRoutes.retroMucicApp,
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
  final AppRoutes appRoute;
  final Function(AppRoutes appRoute) onPress;

  @override
  State<_TabeItem> createState() => _TabeItemState();
}

class _TabeItemState extends State<_TabeItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onPress(widget.appRoute);
        navigatorKey.currentState!.pushReplacementNamed(widget.appRoute.path);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Text(
          widget.title,
          style: Theme.of(context).primaryTextTheme.headline5?.copyWith(
                color: widget.selected
                    ? Theme.of(context).colorScheme.secondary
                    : Colors.white,
              ),
        ),
      ),
    );
  }
}
