import 'package:openweather_flutter/src/error/exception.dart';

class WeatherExceptionRateLimitExceed extends WeatherException {
  WeatherExceptionRateLimitExceed({super.message});

  @override
  String toString() {
    return 'WeatherExceptionRateLimitExceed: $message';
  }
}
