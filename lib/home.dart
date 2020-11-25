import 'package:flutter/material.dart';
import 'package:portfolio/header.dart';
import 'package:portfolio/middle.dart';
import 'package:velocity_x/velocity_x.dart';
import 'colors.dart';
import 'footer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolors.primaryColor,
      child: VStack([
        Header(),
        if(context.isMobile) IntroductionWidget().p16(),
        MiddleScreen(),
        FooterScreen(),
      ]).scrollVertical(),
    );
  }
}

