import 'package:openweather_flutter/src/error/exception.dart';

class WeatherExceptionApiKeyIssue extends WeatherException {
  WeatherExceptionApiKeyIssue({super.message});

  @override
  String toString() {
    return 'WeatherExceptionApiKeyIssue: $message';
  }
}
