import 'package:url_launcher/url_launcher.dart';

openUrl(String urlString) async {
  if (await canLaunch(urlString)) {
    await launch(urlString);
  } else {
    throw 'Could not launch $urlString';
  }
}
