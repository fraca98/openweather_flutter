import 'package:openweather_flutter/src/error/exception.dart';

class WeatherMaps10UrlException extends WeatherException {
  WeatherMaps10UrlException({super.message});

  @override
  String toString() {
    return 'WeatherMaps10UrlException: $message';
  }
}
