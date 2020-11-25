import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var namewidget =   "Dike\nUgochukwu".text.white.xl6.lineHeight(1).size(context.isMobile? 10 : 20).make().shimmer();
    var namewidget2 =   "Dike\nUgochukwu".text.white.xl6.lineHeight(1).size(context.isMobile? 10 : 20).make();
    return SafeArea(child:
    VxBox(child: VStack([
      ZStack([
        // PictureWidget(),
        Row(
          children: [
            VStack([
              if(context.isMobile) 50.heightBox else 10.heightBox,
             if (context.isMobile) CustomAppBar().shimmer(
                primaryColor: Coolors.accentColor
              ) else CustomAppBar(),
              30.heightBox,
              if (context.isMobile) namewidget else namewidget2,
              30.heightBox,
              if(context.isMobile)VxBox().color(Coolors.accentColor).size(60,10).make().shimmer(
                primaryColor: Coolors.accentColor
              ) else VxBox().color(Coolors.accentColor).size(60,10).make(),
              20.heightBox,
              SocialAccounts()
            ]).pSymmetric(h: context.percentWidth * 10 , v: 32),
            Expanded(
              child: VxResponsive(
                fallback: Offstage(),
                medium: IntroductionWidget().pOnly(left: 120).h(context.percentHeight* 60),
                large:  IntroductionWidget().pOnly(left: 120).h(context.percentHeight*60),

              ),
            )
          ],
        ),

      ])
    ])).make());
  }
}


class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      origin: Offset(context.percentWidth * 2, 0),
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        "assets/images/me.jpg",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolors.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.twitter,
        color: Colors.white,
      ).mdClick(() {
        launch("https://twitter.com/henrydykee1");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.github,
        color: Colors.white,
      ).mdClick(() {
        launch("https://github.com/Henrydykee");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.mail,
        color: Colors.white,
      ).mdClick(() {
        launch("https://mail.google.com/mail/dykeehenry@gmail.com");
      }).make()
    ].hStack();
  }
}


class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          " - Introduction".text.gray500.widest.sm.make(),
          10.heightBox,
          "A Jnr.android developer (Dart) and i write Nodejs codes for a living,\nI no too normal like that sha,apparently i am a tech guy not a tech bro"
              .text
              .white
              .xl
              .maxLines(5)
              .make()
              .w(context.isMobile
              ? context.screenWidth
              : context.percentWidth * 40),
          20.heightBox,
        ].vStack(),
        // RaisedButton(
        //   onPressed: () {
        //     launch("https://mtechviral.com");
        //   },
        //   hoverColor: Vx.purple700,
        //   shape: Vx.roundedSm,
        //   color: Coolors.accentColor,
        //   textColor: Coolors.primaryColor,
        //   child: "Visit mtechviral.com".text.make(),
        // ).h(50)
      ],
      // crossAlignment: CrossAxisAlignment.center,
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}
