import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:twrpbuilder/pages/made_tag.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _slideAnimation;
  Animation<double> _fadeAnimation;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: SlideTransition(
        position: _slideAnimation,
        child: Container(
            padding: const EdgeInsets.only(top: 1.0),
            alignment: Alignment.topCenter,
            child: ScreenTypeLayout(
              desktop: _commonScreen(context, false, false),
              mobile: _commonScreen(context, true, false),
              tablet: _commonScreen(context, false, true),
            )),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _slideAnimation =
        Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset(0.0, 0.0)).animate(
            CurvedAnimation(
                parent: _controller, curve: Curves.fastLinearToSlowEaseIn));
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  _commonScreen(BuildContext context, bool isMobile, bool isTablet) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: isMobile
              ? 16.0
              : isTablet ? 24.0 : (MediaQuery.of(context).size.width * 0.15),
          vertical:
              isMobile ? 16.0 : (MediaQuery.of(context).size.width * 0.05)),
      child: Container(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
        alignment: isMobile ? Alignment.center : Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'images/logo.png',
                    width: MediaQuery.of(context).size.width * 0.08,
                    height: MediaQuery.of(context).size.width * 0.08,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.03,
                  ),
                  Text(
                    "TWRP Builder is a project that aims at creating Team Win Recovery Project (TWRP) for the devices which don't have their own TWRP support yet.",
                    style: TextStyle(
                        fontSize: isMobile ? 18.0 : 25.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Text(
                    "With our project, TWRP will be created for your device! "
                    "Download our app, create an account, upload the neccessary files from your device and keep calm! "
                    "Once we get the TWRP recovery image ready for your device, you will be notified!",
                    style: TextStyle(
                        fontSize: isMobile ? 18.0 : 25.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )),
            SizedBox(
              height: 8.0,
            ),
            Divider(
              thickness: kIsWeb ? 2.0 : 1.0,
            ),
            MadeWithTag(),
          ],
        ),
      ),
    );
  }
}
