import 'dart:math';
import 'package:openweather_flutter/openweather_flutter.dart';

///[WeatherMaps10Url] is a class that express multiple methods to be used to generate OpenWeather API URL String to get [WeatherMaps10Data]
class WeatherMaps10Url extends WeatherUrl {
  ///Default [WeatherMaps10Url] constructor
  WeatherMaps10Url({required super.apiKey});

  /// Generates a URL [String] to get [WeatherMaps10Data] image weather map tile
  String getMap({
    /// The layer name of the map to retrieve
    required WeatherLayers layer,

    /// This specifies the zoom level of the requested tile. The value can range from 0 to 25
    required int z,

    /// This specifies the x-coordinate of the requested tile. The value can range from 0 through
    ///  the maximum x-coordinate for the specified zoom level (2^z - 1)
    required int x,

    /// This specifies the y-coordinate of the requested tile. The value can range from 0 through
    ///  the maximum y-coordinate for the specified zoom level (2^z - 1)
    required int y,
  }) {
    if (0 <= z &&
        z <= 25 &&
        0 <= x &&
        x <= (pow(2, z) - 1) &&
        0 <= y &&
        y <= (pow(2, z) - 1)) {
      return 'https://tile.openweathermap.org/map/${weatherLayersString[layer]}/$z/$x/$y.png?appid=$apiKey';
    } else {
      throw WeatherMaps10UrlException(message: 'Wrong setting of z/x/y');
    }
  }
}
