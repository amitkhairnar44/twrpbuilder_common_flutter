import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:twrpbuilder/utils/open_url.dart';
import 'package:twrpbuilder/widgets/counter_widget.dart';

class Downloads extends StatefulWidget {
  @override
  _DownloadsState createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads>
    with SingleTickerProviderStateMixin {
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
              desktop: _desktopTabletLayout(false),
              mobile: _desktopTabletLayout(true),
              tablet: _desktopTabletLayout(false),
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

  _desktopTabletLayout(bool isMobile) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            width: isMobile ? MediaQuery.of(context).size.width : 500.0,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(35.0)),
            child: Row(
              children: <Widget>[
                Icon(
                  FeatherIcons.search,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 16.0,
                ),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0)),
                  style: TextStyle(color: Colors.grey, fontSize: 18.0),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            direction: Axis.horizontal,
            spacing: 16.0,
            runSpacing: isMobile ? 0.0 : 16.0,
            children: <Widget>[
              Card(
                elevation: 3.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 24.0, right: 24.0, top: 24.0, bottom: 16.0),
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(4.0)),
                  width: 550.0,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
//                          Image.network(
//                            'https://avatars3.githubusercontent.com/u/16255290?v=4',
//                            width: isMobile ? (MediaQuery.of(context).size.width * 0.1) : 150.0,
//                            height: isMobile ? (MediaQuery.of(context).size.width * 0.1) : 150.0,
//                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://avatars3.githubusercontent.com/u/16255290?v=4'),
                            radius: isMobile
                                ? (MediaQuery.of(context).size.width * 0.1)
                                : 75.0,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: isMobile ? 0.0 : 16.0,
                                ),
                                Text(
                                  'androidlover5842',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 22.0),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Some role",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton.icon(
                              icon: Icon(
                                FeatherIcons.github,
                                color: Colors.grey[700],
                              ),
                              onPressed: () {
                                OpenUrl.openUrl(
                                    "https://github.com/androidlover5842");
                              },
                              label: Text(
                                'GitHub Profile',
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 3.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Container(
                  width: 550.0,
                  padding: const EdgeInsets.only(
                      left: 24.0, right: 24.0, top: 24.0, bottom: 16.0),
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(4.0)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://avatars2.githubusercontent.com/u/8450017?v=4'),
                            radius: isMobile
                                ? (MediaQuery.of(context).size.width * 0.1)
                                : 75.0,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: isMobile ? 0.0 : 16.0,
                                ),
                                Text(
                                  'berkantkz',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 22.0),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Some role",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton.icon(
                              icon: Icon(
                                FeatherIcons.github,
                                color: Colors.grey[700],
                              ),
                              onPressed: () {
                                OpenUrl.openUrl("https://github.com/berkantkz");
                              },
                              label: Text(
                                'GitHub Profile',
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 3.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Container(
                  width: 550.0,
                  padding: const EdgeInsets.only(
                      left: 24.0, right: 24.0, top: 24.0, bottom: 16.0),
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(4.0)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://avatars1.githubusercontent.com/u/32036579?v=4'),
                            radius: isMobile
                                ? (MediaQuery.of(context).size.width * 0.1)
                                : 75.0,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: isMobile ? 0.0 : 16.0,
                                ),
                                Text(
                                  'Dyneteve',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 22.0),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Some role",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton.icon(
                              icon: Icon(
                                FeatherIcons.github,
                                color: Colors.grey[700],
                              ),
                              onPressed: () {
                                OpenUrl.openUrl("https://github.com/Dyneteve");
                              },
                              label: Text(
                                'GitHub Profile',
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 3.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Container(
                  width: 550.0,
                  padding: const EdgeInsets.only(
                      left: 24.0, right: 24.0, top: 24.0, bottom: 16.0),
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(4.0)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://avatars1.githubusercontent.com/u/17043808?v=4'),
                            radius: isMobile
                                ? (MediaQuery.of(context).size.width * 0.1)
                                : 75.0,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: isMobile ? 0.0 : 16.0,
                                ),
                                Text(
                                  'yshalsager',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 22.0),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Some role",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton.icon(
                              icon: Icon(
                                FeatherIcons.github,
                                color: Colors.grey[700],
                              ),
                              onPressed: () {
                                OpenUrl.openUrl(
                                    "https://github.com/yshalsager");
                              },
                              label: Text(
                                'GitHub Profile',
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 3.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Container(
                  width: 550.0,
                  padding: const EdgeInsets.only(
                      left: 24.0, right: 24.0, top: 24.0, bottom: 16.0),
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(4.0)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://avatars0.githubusercontent.com/u/6293753?v=4'),
                            radius: isMobile
                                ? (MediaQuery.of(context).size.width * 0.1)
                                : 75.0,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: isMobile ? 0.0 : 16.0,
                                ),
                                Text(
                                  'kirito96',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 22.0),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Some role",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton.icon(
                              icon: Icon(
                                FeatherIcons.github,
                                color: Colors.grey[700],
                              ),
                              onPressed: () {
                                OpenUrl.openUrl("https://github.com/kirito96");
                              },
                              label: Text(
                                'GitHub Profile',
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 3.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Container(
                  width: 550.0,
                  padding: const EdgeInsets.only(
                      left: 24.0, right: 24.0, top: 24.0, bottom: 16.0),
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(4.0)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://avatars1.githubusercontent.com/u/11215000?v=4'),
                            radius: isMobile
                                ? (MediaQuery.of(context).size.width * 0.1)
                                : 75.0,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: isMobile ? 0.0 : 16.0,
                                ),
                                Text(
                                  'Surendrajat',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 22.0),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Some role",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton.icon(
                              icon: Icon(
                                FeatherIcons.github,
                                color: Colors.grey[700],
                              ),
                              onPressed: () {
                                OpenUrl.openUrl(
                                    "https://github.com/Surendrajat");
                              },
                              label: Text(
                                'GitHub Profile',
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 3.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Container(
                  width: 550.0,
                  padding: const EdgeInsets.only(
                      left: 24.0, right: 24.0, top: 24.0, bottom: 16.0),
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(4.0)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://avatars2.githubusercontent.com/u/31405855?v=4'),
                            radius: isMobile
                                ? (MediaQuery.of(context).size.width * 0.1)
                                : 75.0,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: isMobile ? 0.0 : 16.0,
                                ),
                                Text(
                                  'McFy49',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 22.0),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Some role",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      isMobile
                          ? Container(
                        height: 16.0,
                      )
                          : Container(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton.icon(
                              icon: Icon(
                                FeatherIcons.github,
                                color: Colors.grey[700],
                              ),
                              onPressed: () {
                                OpenUrl.openUrl(
                                    "https://github.com/McFy49");
                              },
                              label: Text(
                                'GitHub Profile',
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 3.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Container(
                  width: 550.0,
                  padding: const EdgeInsets.only(
                      left: 24.0, right: 24.0, top: 24.0, bottom: 16.0),
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(4.0)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://avatars2.githubusercontent.com/u/6254131?v=4'),
                            radius: isMobile
                                ? (MediaQuery.of(context).size.width * 0.1)
                                : 75.0,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: isMobile ? 0.0 : 16.0,
                                ),
                                Text(
                                  'corsicanu',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 20.0),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Some role",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton.icon(
                              icon: Icon(
                                FeatherIcons.github,
                                color: Colors.grey[700],
                              ),
                              onPressed: () {
                                OpenUrl.openUrl("https://github.com/corsicanu");
                              },
                              label: Text(
                                'GitHub Profile',
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 3.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Container(
                  width: 550.0,
                  padding: const EdgeInsets.only(
                      left: 24.0, right: 24.0, top: 24.0, bottom: 16.0),
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(4.0)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://avatars0.githubusercontent.com/u/23416093?v=4'),
                            radius: isMobile
                                ? (MediaQuery.of(context).size.width * 0.1)
                                : 75.0,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: isMobile ? 0.0 : 16.0,
                                ),
                                Text(
                                  'MuhammedSheref',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 20.0),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Some role",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton.icon(
                              icon: Icon(
                                FeatherIcons.github,
                                color: Colors.grey[700],
                              ),
                              onPressed: () {
                                OpenUrl.openUrl(
                                    "https://github.com/MuhammedSheref");
                              },
                              label: Text(
                                'GitHub Profile',
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 3.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Container(
                  width: 550.0,
                  padding: const EdgeInsets.only(
                      left: 24.0, right: 24.0, top: 24.0, bottom: 16.0),
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(4.0)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://avatars1.githubusercontent.com/u/18245511?v=4'),
                            radius: isMobile
                                ? (MediaQuery.of(context).size.width * 0.1)
                                : 75.0,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: isMobile ? 0.0 : 16.0,
                                ),
                                Text(
                                  'amitkhairnar44',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 20.0),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Some role",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton.icon(
                              icon: Icon(
                                FeatherIcons.github,
                                color: Colors.grey[700],
                              ),
                              onPressed: () {
                                OpenUrl.openUrl(
                                    "https://github.com/amitkhairnar44");
                              },
                              label: Text(
                                'GitHub Profile',
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
