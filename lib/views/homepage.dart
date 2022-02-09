import 'package:flutter/material.dart';
import 'package:myfirstapp/layouts/desktop.dart';
import 'package:myfirstapp/layouts/mobile.dart';
import 'package:myfirstapp/layouts/responsive_layout.dart';
import 'package:myfirstapp/layouts/tablet.dart';
import 'package:myfirstapp/layouts/tiny.dart';
import 'package:myfirstapp/layouts/ultrawide.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
          tiny: TinyBody(),
          mobile: MobileBody(),
          tablet: TabletBody(),
          desktop: DesktopBody(),
          ultrawide: UltraWideBody()),
    );
  }
}
