import 'package:flutter/material.dart';
import 'package:myfirstapp/responsive/desktop.dart';
import 'package:myfirstapp/responsive/mobile.dart';
import 'package:myfirstapp/responsive/responsive_layout.dart';
import 'package:myfirstapp/responsive/tablet.dart';
import 'package:myfirstapp/responsive/tiny.dart';
import 'package:myfirstapp/responsive/ultrawide.dart';

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
