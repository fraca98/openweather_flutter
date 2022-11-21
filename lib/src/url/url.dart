/// [WeatherUrl] is the abstract class implementing the data model
/// of a url of OpenWeather APIs
abstract class WeatherUrl {
  /// The OpenWeather APIkey of the user
  String apiKey;

  ///Default [WeatherUrl] constructor
  WeatherUrl({required this.apiKey});
}
