import 'package:openweather_flutter/openweather_flutter.dart';

class AirPollutionUrl extends OpenWeatherUrl {
  AirPollutionUrl({required super.apiKey});

  String currentAirPollution({
    /// Geographical coordinates (latitude)
    required double lat,

    /// Geographical coordinates (longitude)
    required double lon,
  }) {
    return 'http://api.openweathermap.org/data/2.5/air_pollution?lat=$lat&lon=$lon&appid=$apiKey';
  }

  String forecastAirPollution({
    /// Geographical coordinates (latitude)
    required double lat,

    /// Geographical coordinates (longitude)
    required double lon,
  }) {
    return 'http://api.openweathermap.org/data/2.5/air_pollution/forecast?lat=$lat&lon=$lon&appid=$apiKey';
  }

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
