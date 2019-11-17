import 'package:flutter/material.dart';

class MadeWithTag extends StatelessWidget {
  final double textSize;

  const MadeWithTag({Key key, this.textSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Text(
            'Powered by ',
            style: TextStyle(fontSize: textSize ?? 22.0),
          ),
          FlutterLogo(),
          Text(
            ' Flutter',
            style: TextStyle(fontSize: textSize ?? 22.0),
          ),
        ],
      ),
    );
  }
}
