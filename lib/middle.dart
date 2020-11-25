import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "All Creative Works \n".richText.withTextSpanChildren([
            "Selected Projects".textSpan.yellow400.make()
          ]).xl4.white.make(),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              items: [
                // ProjectWidget(title: "SureRemit"),
                // ProjectWidget(title: "Sure"),
                // ProjectWidget(title: "Henry")
                project(
                  title: "suremit",
                  des: "SureRemit is an ecosystem of merchants for global non-cash remittance. SureRemit removes the complexities involved with money transfers. It is not a money transfer service.",
                ).mdClick(() {
                  launch("https://play.google.com/store/apps/details?id=com.suregifts.sureremit&hl=en&gl=US");
                }).make(),

                project(
                  title: "Chat Appllication",
                  des: "a chat app that explains how get and post request works, and using socket.io and Nodejs",
                ).mdClick(() {
                  launch("https://github.com/Henrydykee/chat_application");
                }).make(),

                project(
                  title: "Superhero App",
                  des: "A simple application that explains how Http and provider works",
                ).mdClick(() {
                  launch("https://github.com/Henrydykee/super_hero_app");
                }).make(),

                project(
                  title: "Devfest App",
                  des: "DevFest App for android & iOS . Written in dart using Flutter SDK.",
                ).mdClick(() {
                  launch("https://github.com/Henrydykee/devfest_app");
                }).make(),

                project(
                  title: "Devcamper API",
                  des: "api built with Nodejs, express, mongodb, and it shows how CRUD functionality works",
                ).mdClick(() {
                  launch("https://github.com/Henrydykee/devfest_app");
                }).make()




              ],
              height: 200,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
            ) ,
          )
        ],
      ).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;

  const ProjectWidget({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center.make()
        .box
        .p8
        .roundedLg
        .neumorphic(color: Vx.purple700, elevation: 5, curve: VxCurve.flat)
        .alignCenter
        .square(200)
        .make()
        .p16();
  }
}


class project extends StatelessWidget {
  final String title;
  final String des;
  final Function onTap;

  project({this.title, this.des,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Vx.purple700,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(3, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                title.text.bold.white.xl.wide.center.make(),
                des.text.white.xs.make()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

