import 'package:openweather_flutter/src/error/exception.dart';

/// [WeatherExceptionNotFound] is a class that implements the exception for not found in response
class WeatherExceptionNotFound extends WeatherException {
  WeatherExceptionNotFound({super.message});

  @override
  String toString() {
    return 'WeatherExceptionNotFound: $message';
  }
}
