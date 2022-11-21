import 'package:openweather_flutter/src/error/exception.dart';

/// [WeatherExceptionApiKeyIssue] is a class that implements the exception for Api-key issue
class WeatherExceptionApiKeyIssue extends WeatherException {
  WeatherExceptionApiKeyIssue({super.message});

  @override
  String toString() {
    return 'WeatherExceptionApiKeyIssue: $message';
  }
}
