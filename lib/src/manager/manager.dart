import 'dart:convert';
import 'package:http/http.dart' as http;

abstract class WeatherManager {
  /// Default constructor
  WeatherManager();

  /// Abstract method that fetches data from the OpenWeather API
  Future<void> fetch(String url);

  Future<dynamic> getResponse(String url) async {
    Uri uri = Uri.parse(url);
    var response = await http.get(uri);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    final decodedResponse = jsonDecode(response.body);
    return Future.value(decodedResponse);
  }
}
