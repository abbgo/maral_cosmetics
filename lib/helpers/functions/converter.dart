import 'package:intl/intl.dart';

String removeHtmlTags(String htmlText) {
  final RegExp htmlTagRegExp =
      RegExp(r'<[^>]*>', multiLine: true, caseSensitive: false);
  return htmlText.replaceAll(htmlTagRegExp, '');
}

String formatDate(String isoDate) {
  DateTime dateTime = DateTime.parse(isoDate); // Parse the ISO 8601 string
  DateFormat formatter = DateFormat('dd.MM.yyyy'); // Specify the desired format
  return formatter.format(dateTime); // Format the DateTime object
}
