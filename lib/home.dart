import 'package:flutter/material.dart';
import 'package:portfolio/header.dart';
import 'package:velocity_x/velocity_x.dart';
import 'colors.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolors.primaryColor,
      child: VStack([
        Header(),
        IntroductionWidget()
      ]).scrollVertical(),
    );
  }
}

