import 'package:openweather_flutter/openweather_flutter.dart';

/// [CurrentWeatherManager] is a class the manages the requests related to [CurrentWeatherData]
class CurrentWeatherManager extends WeatherManager {
  /// Default [CurrentWeatherManager] constructor
  CurrentWeatherManager();

  /// Method that fetches [CurrentWeatherData]
  @override
  Future<CurrentWeatherData> fetch(String url) async {
    final response = await getResponse(url);
    CurrentWeatherData data = CurrentWeatherData.fromJson(response);
    return data;
  }
}
