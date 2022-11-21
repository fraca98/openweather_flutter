import 'package:openweather_flutter/src/error/exception.dart';

class Day5Hour3ForecastUrlException extends WeatherException {
  Day5Hour3ForecastUrlException({super.message});

  @override
  String toString() {
    return 'Day5Hour3ForecastUrlException: $message';
  }
}
