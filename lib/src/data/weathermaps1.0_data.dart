import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:openweather_flutter/src/data/data.dart';

////// [WeatherMaps10Data] is a class that provides provides many kinds of weather maps
class WeatherMaps10Data extends OpenWeatherData {
  /// Uint8List that contains the map. It can be converted to image in an app with Image.memory()
  Uint8List? imageUint8;

  /// Default [WeatherMaps10Data] constructor
  WeatherMaps10Data({this.imageUint8});

  WeatherMaps10Data.fromResponse(Response response) {
    imageUint8 = response.bodyBytes;
  }
}
