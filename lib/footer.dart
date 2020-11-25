

import 'package:flutter/material.dart';
import 'package:portfolio/header.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

import 'colors.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              "Got a project?\nLet's talk.".text.center.white.xl2.make(),
              10.heightBox,
              "mtechviral@gmail.com"
                  .text
                  .color(Coolors.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make()
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: GestureDetector(
            onTap: (){
              launch("https://docs.google.com/document/d/1GOMeCxlddVu22jn0tOz2hfQ_SNu9lDUPYWJ18h8Ylyo/edit?usp=sharing");
            },
            child: HStack(
              [
                "Got a project?\nLet's talk.".text.center.white.xl2.make(),
                10.widthBox,
                "dykeehenry@gmail.com"
                    .text
                    .color(Coolors.accentColor)
                    .make()
                    .box
                    .border(color: Coolors.accentColor)
                    .p16
                    .rounded
                    .make(),
              ],
              alignment: MainAxisAlignment.spaceAround,
            ).w(context.safePercentWidth * 70).scale150().p16(),
          ),
        ),
        50.heightBox,
        CustomAppBar(),
        10.heightBox,
        "Thanks for scrolling, ".richText.semiBold.white.withTextSpanChildren(
            ["that's all folks.".textSpan.gray500.make()]).make(),
        10.heightBox,
        SocialAccounts(),
        30.heightBox,
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}