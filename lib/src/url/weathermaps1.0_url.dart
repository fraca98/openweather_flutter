import 'dart:math';

import 'package:openweather_flutter/openweather_flutter.dart';

class WeatherMaps10Url extends OpenWeatherUrl {
  WeatherMaps10Url({required super.apiKey});

  String? getMap({
    // to get a map tile
    /// The layer name
    required WeatherLayers layer,

    /// This specifies the zoom level of the requested tile. The value can range from 0 to 25.
    required int z,

    /// This specifies the x-coordinate of the requested tile. The value can range from 0 through
    ///  the maximum x-coordinate for the specified zoom level (2^z - 1).
    required int x,

    /// This specifies the y-coordinate of the requested tile. The value can range from 0 through
    ///  the maximum y-coordinate for the specified zoom level (2^z - 1).
    required int y,
  }) {
    if (0 <= z &&
        z <= 25 &&
        0 <= x &&
        x <= (pow(2, z) - 1) &&
        0 <= y &&
        y <= (pow(2, z) - 1)) {
      return 'https://tile.openweathermap.org/map/${weatherLayersString[layer]}/$z/$x/$y.png?appid=$apiKey';
    }
    else{
      return null;
    }
  }
}
