abstract class WeatherException implements Exception {
  String? message;

  WeatherException({this.message});

  /// Returns the string representation of this object.
  @override
  String toString();
}
