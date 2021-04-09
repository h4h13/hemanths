import 'package:flutter/material.dart';
import 'package:hemanth_dev/views/work/work_content_mobile.dart';
import 'package:hemanth_dev/views/work/work_content_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WorkPage extends StatefulWidget {
  @override
  _WorkPageState createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: WorkMobile(),
      tablet: WorkTabletDesktop(),
    );
  }
}
