import 'package:openweather_flutter/openweather_flutter.dart';

class GeocodingUrl extends WeatherUrl {
  GeocodingUrl({required super.apiKey});

  /*--- Direct Geocoding---*/

  ///
  String coordinatesByLocationName({
    /// City name
    required String cityName,

    /// Country code. Please use ISO 3166 country codes
    WeatherCountryCodes? countryCode,

    /// Number of the locations in the API response (for instance, London in the UK and London in the US)
    /// You can set 0 to have all the responses (more than 5) or you can set a number up to 5 (number of results in the API response)
    /// Warning: returning a [List<GeocodingData>]
    int? limit,
  }) {
    String url;
    url = 'http://api.openweathermap.org/geo/1.0/direct?q=$cityName';
    url = checkCountryCode(url, weatherCountryCodesString[countryCode]);
    url = checkLimit(url, limit);
    url = addApiKey(url, apiKey);
    return url;
  }

  String coordinatesByZipCode({
    /// Zip/post code
    required String zipCode,

    /// Country code. Please use ISO 3166 country codes
    WeatherCountryCodes? countryCode,
  }) {
    String url;
    url = 'http://api.openweathermap.org/geo/1.0/zip?zip=$zipCode';
    url = checkCountryCode(url, weatherCountryCodesString[countryCode]);
    url = addApiKey(url, apiKey);
    return url;
  }

  /*---Reverse Geocoding---*/
  String nameLocationByCoordinates({
    /// Geographical coordinates (latitude)
    required double lat,

    /// Geographical coordinates (longitude)
    required double lon,

    /// Number of the locations in the API response (several results can be returned in the API response)
    /// You can set 0 to have all the responses (more than 5) or you can set a number up to 5 (number of results in the API response)
    /// Warning: returning a [List<GeocodingData>]
    int? limit,
  }) {
    String url;
    url = 'http://api.openweathermap.org/geo/1.0/reverse?lat=$lat&lon=$lon';
    url = checkLimit(url, limit);
    url = addApiKey(url, apiKey);
    return url;
  }
}
