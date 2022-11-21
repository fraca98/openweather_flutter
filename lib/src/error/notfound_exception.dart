import 'package:openweather_flutter/src/error/exception.dart';

class WeatherExceptionNotFound extends WeatherException {
  WeatherExceptionNotFound({super.message});

  @override
  String toString() {
    return 'WeatherExceptionNotFound: $message';
  }
}
