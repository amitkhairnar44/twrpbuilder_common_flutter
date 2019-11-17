import 'dart:ui';

import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:twrpbuilder/pages/about.dart';
import 'package:twrpbuilder/pages/contributors.dart';
import 'package:twrpbuilder/pages/downloads.dart';
import 'package:twrpbuilder/pages/home.dart';
import 'package:twrpbuilder/pages/made_tag.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  Color _color1 = Colors.grey[600];
  Color _color2 = Colors.blue[300];
  Widget _selectedScreen = Home();
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return AnimatedContainer(
        duration: Duration(seconds: 3),
        decoration: BoxDecoration(
//            gradient: LinearGradient(colors: <Color>[
//              _color1,
//              _color2,
//            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            image: DecorationImage(
          image: AssetImage('images/background.jpg'),
          fit: BoxFit.cover,)
        // TODO Disable background image as web support is still in alpha
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
          child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              title: Text(
                'TWRP Builder',
                style: TextStyle(fontFamily: 'GoogleSans'),
              ),
              leading: ScreenTypeLayout(
                mobile: IconButton(
                  onPressed: () {
                    _scaffoldKey.currentState.openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
                desktop: Container(),
                tablet: Container(),
              ),
              automaticallyImplyLeading: false,
              actions: <Widget>[
                ResponsiveBuilder(
                  builder: (context, sizingInformation) {
                    if (sizingInformation.deviceScreenType ==
                        DeviceScreenType.Desktop) {
                      return _desktopTabletActions();
                    }

                    if (sizingInformation.deviceScreenType ==
                        DeviceScreenType.Tablet) {
                      return _desktopTabletActions();
                    }

                    if (sizingInformation.deviceScreenType ==
                        DeviceScreenType.Watch) {
                      return Container();
                    }

                    return Container();
                  },
                ),
              ],
            ),
            drawer: sizingInformation.deviceScreenType ==
                    DeviceScreenType.Mobile
                ? Drawer(
                    child: ListView(
                      children: <Widget>[
                        ListTile(
                          title: Text('Home'),
                          leading: Icon(FeatherIcons.home),
                          onTap: () {
                            Navigator.of(context).pop();
                            setState(() {
                              _color1 = Colors.grey;
                              _color2 = Colors.blue[300];
                              _selectedScreen = Home();
                            });
                          },
                        ),
                        ListTile(
                          title: Text('Downloads'),
                          leading: Icon(FeatherIcons.downloadCloud),
                          onTap: () {
                            Navigator.of(context).pop();
                            setState(() {
                              _color1 = Colors.blueGrey;
                              _color2 = Colors.brown;
                              _selectedScreen = Downloads();
                            });
                          },
                        ),
                        ListTile(
                          title: Text('Contributors'),
                          leading: Icon(FeatherIcons.users),
                          onTap: () {
                            Navigator.of(context).pop();
                            setState(() {
                              _selectedScreen = Contributors();
                            });
                          },
                        ),
                        ListTile(
                          title: Text('About'),
                          leading: Icon(FeatherIcons.info),
                          onTap: () {
                            Navigator.of(context).pop();
                            setState(() {
                              _selectedScreen = About();
                            });
                          },
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 16.0, top: 32.0),
                          child: MadeWithTag(
                            textSize: 16.0,
                          ),
                        )
                      ],
                    ),
                  )
                : null,
            body: ResponsiveBuilder(
              builder: (context, sizingInformation) {
                if (sizingInformation.deviceScreenType ==
                    DeviceScreenType.Desktop) {
                  return Container(
                    alignment: Alignment.center,
                    child: _selectedScreen,
                  );
                }

                if (sizingInformation.deviceScreenType ==
                    DeviceScreenType.Tablet) {
                  return Container(
                    alignment: Alignment.center,
                    child: _selectedScreen,
                  );
                }

                if (sizingInformation.deviceScreenType ==
                    DeviceScreenType.Watch) {
                  return Container(color: Colors.yellow);
                }

                return _selectedScreen;
              },
            ),
          ),
        ),
      );
    });
  }

  Widget _desktopTabletActions() {
    return Row(
      children: <Widget>[
        FlatButton.icon(
          icon: Icon(
            FeatherIcons.home,
            size: 20.0,
          ),
          label: Text('Home'),
          onPressed: () {
            setState(() {
              _color1 = Colors.grey;
              _color2 = Colors.blue[300];
              _selectedScreen = Home();
            });
          },
        ),
        FlatButton.icon(
          icon: Icon(
            FeatherIcons.downloadCloud,
            size: 20.0,
          ),
          label: Text('Downloads'),
          onPressed: () {
            setState(() {
              _color1 = Colors.black54;
              _color2 = Colors.blueGrey;
              _selectedScreen = Downloads();
            });
          },
        ),
        FlatButton.icon(
          icon: Icon(
            FeatherIcons.users,
            size: 20.0,
          ),
          label: Text('Contributors'),
          onPressed: () {
            setState(() {
              _selectedScreen = Contributors();
            });
          },
        ),
        FlatButton.icon(
          icon: Icon(
            Icons.info_outline,
            size: 20.0,
          ),
          label: Text('About'),
          onPressed: () {
            setState(() {
              _selectedScreen = About();
            });
          },
        ),
      ],
    );
  }
}
