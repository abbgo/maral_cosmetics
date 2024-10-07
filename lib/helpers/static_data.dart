import 'package:flutter_dotenv/flutter_dotenv.dart';

const pageSize = 10;
const double productCardHeight = 275;

String apiUrl = dotenv.env['API_URL']!;
String pathUrl = dotenv.env['PATH_URL']!;
