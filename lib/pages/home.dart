import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:twrpbuilder/utils/open_url.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: _commonScreen(context, false, false),
      mobile: _commonScreen(context, true, false),
      tablet: _commonScreen(context, false, true),
    );
  }

  _commonScreen(BuildContext context, bool isMobile, bool isTablet) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Container(
        padding: const EdgeInsets.only(top: 32.0),
        alignment: isMobile ? Alignment.topCenter : Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: isMobile
                  ? 0.0
                  : isTablet
                      ? (MediaQuery.of(context).size.width * 0.1)
                      : (MediaQuery.of(context).size.width * 0.1),
            ),
            Image.asset(
              'images/banner.png',
              width: MediaQuery.of(context).size.width *
                  (isMobile ? 0.6 : isTablet ? 0.5 : 0.4),
            ),
            SizedBox(
              height: 42.0,
            ),
            Text(
              'Official site of the TWRP Builder Project',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: isMobile
                  ? MediaQuery.of(context).size.width * 0.2
                  : isTablet
                      ? (MediaQuery.of(context).size.width * 0.25)
                      : (MediaQuery.of(context).size.height / 3),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Wrap(
                alignment: WrapAlignment.center,
                direction: Axis.horizontal,
                spacing: 16.0,
                runSpacing: isMobile ? 0.0 : 16.0,
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 24.0, right: 24.0, top: 24.0, bottom: 16.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0)),
                      width: 400.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Check out our GitHub repositories",
                            style: TextStyle(fontSize: 18.0),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "Our project is open-source!",
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () {
                                OpenUrl.openUrl(
                                    "https://github.com/TwrpBuilder/TwrpBuilder");
                              },
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(
                                    16.0, 8.0, 8.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      'Visit',
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Icon(Icons.keyboard_arrow_right)
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 24.0, right: 24.0, top: 24.0, bottom: 16.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0)),
                      width: 400.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Check out our thread on XDA Developers",
                            style: TextStyle(fontSize: 18.0),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "Have any questions? Ask us on XDA!",
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () {
                                OpenUrl.openUrl(
                                    "https://forum.xda-developers.com/android/apps-games/twrpbuilder-t3744253");
                              },
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(
                                    16.0, 8.0, 8.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text('Visit'),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Icon(Icons.keyboard_arrow_right)
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 24.0, right: 24.0, top: 24.0, bottom: 16.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0)),
                      width: 400.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Download the app",
                            style: TextStyle(fontSize: 18.0),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "Need the latest version? Get it here!",
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () {
                                OpenUrl.openUrl(
                                    "https://play.google.com/store/apps/details?id=com.github.TwrpBuilderF");
                              },
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(
                                    16.0, 8.0, 8.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text('Download'),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Icon(Icons.keyboard_arrow_right)
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
