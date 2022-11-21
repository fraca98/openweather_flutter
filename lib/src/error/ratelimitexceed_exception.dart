import 'package:openweather_flutter/src/error/exception.dart';

/// [WeatherExceptionRateLimitExceed] is a class that implements the exception for too many requests to the API
class WeatherExceptionRateLimitExceed extends WeatherException {
  WeatherExceptionRateLimitExceed({super.message});

  @override
  String toString() {
    return 'WeatherExceptionRateLimitExceed: $message';
  }
}
