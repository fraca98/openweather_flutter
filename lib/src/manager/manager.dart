import 'dart:async';
import 'dart:convert';
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
      http.Response response =
          await http.get(uri).timeout(const Duration(seconds: 5));

      Logger().i(response.body);
      manageError(response);
      final decodedResponse =
          jsonDecode(response.body); //return the Json object
      return Future.value(decodedResponse);
    } catch (e) {
      rethrow;
    }
  }
  // TimeoutException throw if over timeout seconds with no response
  // SocketException if connection fails (ex. no internet connection)

  /// Method to manage response.statusCode
  static void manageError(http.Response response) {
    switch (response.statusCode) {

      /// Ok
      case 200:
        break;

      /// Wrong parameter
      case 400:
        throw WrongParamException(
            message: jsonDecode(response.body)['message']);

      /// Wrong API key inserted
      case 401:
        throw WeatherExceptionApiKeyIssue(
            message: jsonDecode(response.body)['message']);

      /// Not found
      case 404:
        throw WeatherExceptionNotFound(
            message: jsonDecode(response.body)['message']);

      /// Too many requests
      case 429:
        throw WeatherExceptionRateLimitExceed(
            message: jsonDecode(response.body)['message']);
    }
  }
}
