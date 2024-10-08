import 'package:flutter/material.dart';

import 'package:flutter_hemanth_dev/constants.dart';
import 'package:flutter_hemanth_dev/pages/home/home_desktop.dart';
import 'package:flutter_hemanth_dev/widgets/social_icon.dart';
import 'package:flutter_hemanth_dev/pages/projects/paisa_page.dart';
import 'package:flutter_hemanth_dev/pages/projects/retro_music_page.dart';

class HomeMobileLayout extends StatelessWidget {
  const HomeMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Stack(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints.expand(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                  ),
                  child: Container(
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
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'hello'.resolveString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'welcome_name'.resolveString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'description'.resolveString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white.withOpacity(0.78),
                                  ),
                            ),
                          ),
                          const SocialIcons(alignment: MainAxisAlignment.start),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    'projects'.resolveString(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white.withOpacity(0.78),
                                        ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => const RetroMusicPage(),
                                      ),
                                    );
                                  },
                                  child: const Text('Retro Music'),
                                ),
                                const SizedBox(height: 8),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => const PaisaPage(),
                                      ),
                                    );
                                  },
                                  child: const Text('Paisa - Expense Manager'),
                                ),
                                const TermsAndConditions(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
