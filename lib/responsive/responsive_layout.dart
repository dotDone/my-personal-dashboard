import 'package:flutter/material.dart';
import 'package:myfirstapp/responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget tiny;
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final Widget ultrawide;

  ResponsiveLayout(
      {required this.tiny,
      required this.mobile,
      required this.tablet,
      required this.desktop,
      required this.ultrawide});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < tinyMaxWidth) {
          return tiny;
        } else if (constraints.maxWidth < mobileMaxWidth) {
          return mobile;
        } else if (constraints.maxWidth < tabletMaxWidth) {
          return tablet;
        } else if (constraints.maxWidth < desktopMaxWidth) {
          return desktop;
        } else {
          return ultrawide;
        }
      },
    );
  }
}
