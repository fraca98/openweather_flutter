import 'package:openweather_flutter/openweather_flutter.dart';

///[AirPollutionUrl] is a class that express multiple methods to be used to generate OpenWeather API URL String to get [AirPollutionData]
class AirPollutionUrl extends WeatherUrl {
  ///Default [AirPollutionUrl] constructor
  AirPollutionUrl({required super.apiKey});

  /// Generates a URL [String] to get current [AirPollutionData] given coordinates
  String currentAirPollution({
    /// Geographical coordinates (latitude)
    required double lat,

    /// Geographical coordinates (longitude)
    required double lon,
  }) {
    return 'http://api.openweathermap.org/data/2.5/air_pollution?lat=$lat&lon=$lon&appid=$apiKey';
  }

  /// Generates a URL [String] to get forecast [AirPollutionData] given coordinates
  String forecastAirPollution({
    /// Geographical coordinates (latitude)
    required double lat,

    /// Geographical coordinates (longitude)
    required double lon,
  }) {
    return 'http://api.openweathermap.org/data/2.5/air_pollution/forecast?lat=$lat&lon=$lon&appid=$apiKey';
  }

  /// Generates a URL [String] to get hstorical [AirPollutionData] given coordinates, start and end UNIX Timestamp
  String historicalAirPollution({
    /// Geographical coordinates (latitude)
    required double lat,

    /// Geographical coordinates (longitude)
    required double lon,

    /// Start date (unix time, UTC time zone)
    required int starttimestamp,

    /// End date (unix time, UTC time zone)
    required int endtimestamp,
  }) {
    return 'http://api.openweathermap.org/data/2.5/air_pollution/history?lat=$lat&lon=$lon&start=$starttimestamp&end=$endtimestamp&appid=$apiKey';
  }
}
