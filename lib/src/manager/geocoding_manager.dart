import 'package:openweather_flutter/openweather_flutter.dart';

/// [GeocodingManager] is a class the manages the requests related to [GeocodingData]
class GeocodingManager extends WeatherManager {
  /// Default [GeocodingManager] constructor
  GeocodingManager();

  /// Method that fetches List[GeocodingData] or [GeocodingData]
  @override
  Future<dynamic> fetch(String url) async {
    //i can export a single GeocodingData or a List<GeocodingData>
    final response = await getResponse(
        url); //in this case i can receive a List, so i have to manage it
    if (response.isEmpty) {
      throw WeatherExceptionNotFound(
          message: "Geocoding failed"); //Error 404 if empty response
    } else {
      if (response is List) {
        //if response is a List of Geocoding data
        List<GeocodingData> data = [];
        for (var element in response) {
          data.add(GeocodingData.fromJson(element));
        }
        return data;
      } else { //if not a list of Geocoding data
        GeocodingData data = GeocodingData.fromJson(response);
        return data;
      }
    }
  }
}
