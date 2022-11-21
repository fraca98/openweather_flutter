import 'package:openweather_flutter/src/error/exception.dart';

/// [Day5Hour3ForecastUrlException] is a class that implements the exception for the creation of [Day5Hour3ForecastUrl]
class Day5Hour3ForecastUrlException extends WeatherException {
  Day5Hour3ForecastUrlException({super.message});

  @override
  String toString() {
    return 'Day5Hour3ForecastUrlException: $message';
  }
}
