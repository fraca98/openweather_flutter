import 'package:openweather_flutter/src/error/exception.dart';

/// [WeatherMaps10UrlException] is a class that implements the exception for the creation of [WeatherMaps10Url]
class WeatherMaps10UrlException extends WeatherException {
  WeatherMaps10UrlException({super.message});

  @override
  String toString() {
    return 'WeatherMaps10UrlException: $message';
  }
}
