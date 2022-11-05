import 'package:url_launcher/url_launcher.dart';

class Method {
  launchURL(String link) async {
    Uri uri = Uri.parse(link);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

//  launchCaller() async {
//     const url = "tel:9595242507";
//     if (await canLaunch(url)) {
//        await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
// }

// launchEmail() async {
//       if (await canLaunchUrl("mailto:champ96k@gmail.com")) {
//         await launch("mailto:champ96k@gmail.com");
//       } else {
//         throw 'Could not launch';
//       }
//     }

}
