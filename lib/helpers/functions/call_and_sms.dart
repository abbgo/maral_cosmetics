import 'package:url_launcher/url_launcher.dart';

Future<void> makePhoneCall(String phoneNumber) async {
  final Uri telUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );

  if (await canLaunchUrl(telUri)) {
    await launchUrl(telUri);
  } else {
    throw 'Could not make a call to $phoneNumber';
  }
}
