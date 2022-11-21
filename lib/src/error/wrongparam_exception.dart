import 'package:openweather_flutter/src/error/exception.dart';

/// [WrongParamException] is a class that implements the exception for the wrong parameters inserted in the URL request
class WrongParamException extends WeatherException {
  WrongParamException({super.message});

  @override
  String toString() {
    return 'WrongParamException: $message';
  }
}
