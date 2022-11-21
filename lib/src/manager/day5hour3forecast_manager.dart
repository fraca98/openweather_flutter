import 'package:openweather_flutter/openweather_flutter.dart';

/// [Day5Hour3ForecastManager] is a class the manages the requests related to [Day5Hour3ForecastData]
class Day5Hour3ForecastManager extends WeatherManager {
  /// Default [Day5Hour3ForecastManager] constructor
  Day5Hour3ForecastManager();

  /// Method that fetches [Day5Hour3ForecastData].
  @override
  Future<Day5Hour3ForecastData> fetch(String url) async {
    final response = await getResponse(url);
    Day5Hour3ForecastData data = Day5Hour3ForecastData.fromJson(response);
    return data;
  }
}
