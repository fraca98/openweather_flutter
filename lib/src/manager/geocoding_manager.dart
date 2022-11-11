import 'package:openweather_flutter/openweather_flutter.dart';

/// [GeocodingManager] is a class the manages the requests related to [GeocodingData]
class GeocodingManager extends WeatherManager {
  /// Default [GeocodingManager] constructor
  GeocodingManager();

  /// Method that fetches [GeocodingData]
  @override
  Future<GeocodingData> fetch(String url) async {
    final response = await getResponse(url);
    GeocodingData data =
        GeocodingData.fromJson(response[0]); //cause returned a List<dynamic>, so i need to access the first element
    return data;
  }
}
