import 'package:url_launcher/url_launcher.dart';

//Link Opener
void linkopener(String Number, String Msg) {
  String url = ('https://wa.me/$Number?text=$Msg');
  launch(url);
}
