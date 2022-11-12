import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:openweather_flutter/openweather_flutter.dart';

/// [WeatherMaps10Manager] is a class the manages the requests related to [WeatherMaps10Data]
class WeatherMaps10Manager extends WeatherManager {
  /// Default [WeatherMaps10Manager] constructor
  WeatherMaps10Manager();

  /// Method that fetches [WeatherMaps10Data]
  @override
  Future<WeatherMaps10Data> fetch(String url) async {
    final response =
        await getResponse(url); //the response here is response (Response type)
    WeatherMaps10Data data = WeatherMaps10Data.fromResponse(response);
    return data;
  }

  /// Method the obtains the response (entire) from the given [url], because here the API returns a png image, not a Json
  @override
  Future<dynamic> getResponse(String url) async {
    Uri uri = Uri.parse(url);
    try {
      var response = await http.get(uri);
      WeatherManager.manageError(response);
      return Future.value(
          response); //Cause API is returning me a PNG image i pass the entire response (Response type)

    } on SocketException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
