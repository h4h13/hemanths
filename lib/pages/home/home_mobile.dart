import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/social_icon.dart';
import '../projects/paisa_page.dart';
import '../projects/retro_music_page.dart';

class HomeMobileLayout extends StatefulWidget {
  const HomeMobileLayout({Key? key}) : super(key: key);

  @override
  State<HomeMobileLayout> createState() => _HomeMobileLayoutState();
}

class _HomeMobileLayoutState extends State<HomeMobileLayout> {
  late int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return IndexedStack(
            index: index,
            children: [
              Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/images/hemanth.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.75),
                      BlendMode.srcATop,
                    ),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'hello'.resolveString(),
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .primaryTextTheme
                              .headline4
                              ?.copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'welcome_name'.resolveString(),
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .primaryTextTheme
                              .headline2
                              ?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'description'.resolveString(),
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .primaryTextTheme
                              .headline5
                              ?.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.78),
                              ),
                        ),
                      ),
                      const SocialIcons(),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
              const PaisaPage(),
              const RetroMusicPage(),
            ],
          );
        },
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontFamily: 'Google Sans',
              fontSize: 14,
            ),
          ),
        ),
        child: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (index) {
            this.index = index;
            setState(() {});
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              selectedIcon: Icon(Icons.home),
            ),
            NavigationDestination(
              icon: Icon(Icons.category_outlined),
              label: 'Projects',
              selectedIcon: Icon(Icons.category),
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              label: 'About',
              selectedIcon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
