import 'package:openweather_flutter/src/error/exception.dart';

class WrongParamException extends WeatherException {
  WrongParamException({super.message});

  @override
  String toString() {
    return 'WrongParamException: $message';
  }
}
