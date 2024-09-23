import 'package:flutter/material.dart';
import 'package:flutter_hemanth_dev/widgets/navigation_bar.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key, required this.htmlUrl});
  final String htmlUrl;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return Scaffold(
          appBar: AppBar(),
          body: InAppWebView(
            initialSettings: InAppWebViewSettings(
              underPageBackgroundColor: Theme.of(context).colorScheme.surface,
              transparentBackground: true,
            ),
            initialFile: htmlUrl,
          ),
        );
      },
      tablet: (p0) {
        return Material(
          child: SafeArea(
            child: Column(
              children: [
                const TabBarNavigation(),
                Expanded(
                  child: InAppWebView(
                    initialSettings: InAppWebViewSettings(
                      useShouldOverrideUrlLoading: true,
                      mediaPlaybackRequiresUserGesture: false,
                      underPageBackgroundColor:
                          Theme.of(context).colorScheme.surface,
                      transparentBackground: true,
                    ),
                    initialFile: htmlUrl,
                    onReceivedError: (controller, request, error) {
                      print('Error loading $request: $error');
                    },
                    onConsoleMessage: (controller, consoleMessage) {
                      print('Console message: ${consoleMessage.message}');
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
