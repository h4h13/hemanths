import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:flutter_hemanth_dev/app_routes.dart';
import 'package:flutter_hemanth_dev/pages/home/home_page.dart';

class TabBarNavigation extends StatefulWidget {
  const TabBarNavigation({
    super.key,
  });

  @override
  State<TabBarNavigation> createState() => _TabBarNavigationState();
}

class _TabBarNavigationState extends State<TabBarNavigation> {
  int index = 0;

  void changeHighlight(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => const SizedBox.shrink(),
      tablet: (p0) => SafeArea(
        child: FractionallySizedBox(
          widthFactor: 0.9,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
            ),
            child: Row(
              children: [
                const Spacer(),
                _TabItem(
                  title: 'Home',
                  selected: GoRouterState.of(context).uri.path.contains('app'),
                  onPress: () {
                    const HomePageData().go(context);
                  },
                ),
                _TabItem(
                  title: 'Retro Music',
                  selected: GoRouterState.of(context)
                      .uri
                      .queryParameters
                      .containsValue('retro'),
                  onPress: () {
                    const AppPageData(App.retro).go(context);
                  },
                ),
                _TabItem(
                  title: 'Paisa',
                  selected: GoRouterState.of(context)
                      .uri
                      .queryParameters
                      .containsValue('paisa'),
                  onPress: () {
                    const AppPageData(App.paisa).go(context);
                  },
                ),
                _TabItem(
                  title: 'Terms & Conditions',
                  selected:
                      GoRouterState.of(context).uri.path.contains('terms'),
                  onPress: () {
                    const TermsPageData().go(context);
                  },
                ),
                _TabItem(
                  title: 'Privacy Policy',
                  selected:
                      GoRouterState.of(context).uri.path.contains('policy'),
                  onPress: () {
                    const PolicyPageData().go(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TabItem extends StatefulWidget {
  const _TabItem({
    required this.title,
    required this.selected,
    required this.onPress,
  });

  final bool selected;
  final String title;

  final VoidCallback onPress;

  @override
  State<_TabItem> createState() => _TabItemState();
}

class _TabItemState extends State<_TabItem> {
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
        widget.onPress();
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
