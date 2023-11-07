import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String theMovieDbKey = dotenv.env['THE_MOVIEDB_KEY']??'NO_KEY';
  static String theBaseUrl = dotenv.env['THE_BASE_URL']??'NO_URL';
}

