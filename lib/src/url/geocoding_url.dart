import 'package:openweather_flutter/openweather_flutter.dart';

class GeocodingUrl extends OpenWeatherUrl {
  GeocodingUrl({required super.apiKey});

  /*--- Direct Geocoding---*/

  ///
  String coordinatesByLocationName({
    /// City name
    required String cityName,

    /// Country code. Please use ISO 3166 country codes
    String? countryCode,

    /// Number of the locations in the API response (up to 5 results can be returned in the API response), cause many locations can have the same name (for instance, London in the UK and London in the US)
    int? limit,
  }) {
    String url;
    url = 'http://api.openweathermap.org/geo/1.0/direct?q=$cityName';
    if (countryCode != null) {
      url = '$url,$countryCode'; //TODO: enum countrycodes?
    }
    url = checkLimit(url, limit);
    url = addApiKey(url, apiKey);
    return url;
  }

  String coordinatesByZipCode({
    /// Zip/post code
    required String zipCode,

    /// Country code. Please use ISO 3166 country codes
    String? countryCode,
  }) {
    String url;
    url = 'http://api.openweathermap.org/geo/1.0/zip?zip=$zipCode';
    url = checkCountryCode(url, countryCode);
    url = addApiKey(url, apiKey);
    return url;
  }

  /*---Reverse Geocoding---*/
  String nameLocationByCoordinates({
    /// Geographical coordinates (latitude)
    required double lat,

    /// Geographical coordinates (longitude)
    required double lon,

    /// Number of the locations in the API response (up to 5 results can be returned in the API response), cause many locations can have the same name (for instance, London in the UK and London in the US)
    int? limit,
  }) {
    String url;
    url = 'http://api.openweathermap.org/geo/1.0/reverse?lat=$lat&lon=$lon';
    url = checkLimit(url, limit);
    url = addApiKey(url, apiKey);
    return url;
  }
}
