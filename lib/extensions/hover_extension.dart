import 'package:flutter/material.dart';
import 'package:hemanth_dev/translation_on_hover.dart';
import 'dart:html' as html;

extension HoverExtensions on Widget {
  Widget get mouseUpOnHOver {
    return TranslateOnHover(child: this);
  }

  static final appContainer =
      html.window.document.getElementById('app-container');

  Widget get showCursorOnHover {
    return MouseRegion(
      onHover: (evt) {
        appContainer.style.cursor = 'pointer';
      },
      onExit: (evt) {
        appContainer.style.cursor = 'default';
      },
      child: this,
    );
  }
}
