import 'package:flutter/material.dart';
import 'package:myfirstapp/responsive/responsive_layout.dart';
import 'package:myfirstapp/views/desktop_body.dart';
import 'package:myfirstapp/views/mobile_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}
