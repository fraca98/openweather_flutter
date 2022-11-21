import 'package:openweather_flutter/src/error/exception.dart';

class GeocodingUrlException extends WeatherException {
  GeocodingUrlException({super.message});

  @override
  String toString() {
    return 'GeocodingUrlException: $message';
  }
}
