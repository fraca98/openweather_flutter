import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import '../../openweather_flutter.dart';

abstract class WeatherManager {
  /// Default [WeatherManager] constructor
  WeatherManager();

  /// Abstract method that fetches data from the OpenWeather API
  Future<void> fetch(String url);

  /// Method the obtains the decoded (jsonDecode) response from the given [url] //TODO: maybe modify URL to objects(?)
  Future<dynamic> getResponse(String url) async {
    Uri uri = Uri.parse(url);
    try {
      http.Response response = await http.get(uri);
      Logger().i(response.body);
      manageError(response);
      final decodedResponse =
          jsonDecode(response.body); //return the Json object
      return Future.value(decodedResponse);
    } on SocketException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  static void manageError(http.Response response) {
    switch (response.statusCode) {
      case 200:
        break;
      case 401:
        throw WeatherExceptionApiKeyIssue(
            message: jsonDecode(response.body)['message']);
      case 404:
        throw WeatherExceptionNotFound(
            message: jsonDecode(response.body)['message']);
      case 429:
        throw WeatherExceptionRateLimitExceed(
            message: jsonDecode(response.body)['message']);
    }
  }
}

// TODO: implement timeout error