import 'package:openweather_flutter/openweather_flutter.dart';

/// [AirPollutionManager] is a class the manages the requests related to [AirPollutionData]
class AirPollutionManager extends WeatherManager {
  /// Default [AirPollutionManager] constructor
  AirPollutionManager();

  /// Method that fetches [AirPollutionData]
  @override
  Future<AirPollutionData> fetch(String url) async {
    final response = await getResponse(url);
    AirPollutionData data = AirPollutionData.fromJson(response);
    return data;
  }
}
