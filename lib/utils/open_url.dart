import 'package:flutter/foundation.dart';
import 'package:universal_html/prefer_universal/html.dart' as html;
import 'package:universal_io/prefer_universal/io.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenUrl {
  static void openUrl(String url) async {
    // flutter web
    if (kIsWeb) {
      html.document.window.location.href = url;
    }
    // android or ios
    else if (Platform.isAndroid || Platform.isIOS) {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
    // unknown platform
    else {
      throw new Exception('Unsupported platform');
    }
  }
}
