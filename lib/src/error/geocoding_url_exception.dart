import 'package:openweather_flutter/src/error/exception.dart';

/// [GeocodingUrlException] is a class that implements the exception for the creation of [GeocodingUrl]
class GeocodingUrlException extends WeatherException {
  GeocodingUrlException({super.message});

  @override
  String toString() {
    return 'GeocodingUrlException: $message';
  }
}
