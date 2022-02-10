import 'package:flutter/material.dart';
import 'package:myfirstapp/utils/constants.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  ResponsiveLayout(
      {Key? key, required this.mobileBody, required this.desktopBody})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileMaxWidth) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
