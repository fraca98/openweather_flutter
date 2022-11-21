import 'package:openweather_flutter/openweather_flutter.dart';

///[Day5Hour3ForecastUrl] is a class that express multiple methods to be used to generate OpenWeather API URL String to get [Day5Hour3ForecastData]
class Day5Hour3ForecastUrl extends WeatherUrl {
  ///Default [Day5Hour3ForecastUrl] constructor
  Day5Hour3ForecastUrl({required super.apiKey});

  /// Generates a URL [String] to get forecast weather [Day5Hour3ForecastData] given coordinates
  String forecastByCoordinates({
    /// Geographical coordinates (latitude)
    required double lat,

    /// Geographical coordinates (longitude)
    required double lon,

    /// A number of timestamps, which will be returned in the API response (To limit number of timestamps in the API response)
    int? cnt,

    /// Units of measurement. If you do not use the units parameter, standard units will be applied by default
    WeatherUnits? units,

    /// Use the lang parameter to get the output in your language
    WeatherLangs? lang,
  }) {
    String url;
    url = 'http://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$lon';
    url = checkCnt(url, cnt);
    url = addApiKey(url, apiKey);
    url = checkUnits(url, units);
    url = checkLang(url, lang);
    return url;
  }

  /*---Built-in Geocoding---*/
  /// Not recommended for use cause it uses Built in Geocoding!
  /// Generates a URL [String] to get forecast weather [Day5Hour3ForecastData] given the city name
  String forecastByCityName({
    /// City name.
    required String cityName,

    /// Country code. Please use ISO 3166 country codes.
    WeatherCountryCodes? countryCode,

    /// A number of timestamps, which will be returned in the API response (To limit number of timestamps in the API response)
    int? cnt,

    /// Units of measurement. If you do not use the units parameter, standard units will be applied by default
    WeatherUnits? units,

    /// Use the lang parameter to get the output in your language
    WeatherLangs? lang,
  }) {
    String url;
    url = 'http://api.openweathermap.org/data/2.5/forecast?q=$cityName';
    url = checkCountryCode(url, weatherCountryCodesString[countryCode]);
    url = addApiKey(url, apiKey);
    url = checkCnt(url, cnt);
    url = checkUnits(url, units);
    url = checkLang(url, lang);
    return url;
  }

  /// Not recommended for use cause it uses Built in Geocoding!
  /// Generates a URL [String] to get forecast weather [Day5Hour3ForecastData] given the Zip code
  String forecastByZipCode({
    /// Zip code.
    required String zipCode,

    /// Country code. Please use ISO 3166 country codes. If not specified is "US" code
    WeatherCountryCodes? countryCode,

    /// A number of timestamps, which will be returned in the API response (To limit number of timestamps in the API response)
    int? cnt,

    /// Units of measurement. If you do not use the units parameter, standard units will be applied by default
    WeatherUnits? units,

    /// Use the lang parameter to get the output in your language
    WeatherLangs? lang,
  }) {
    String url;
    url = 'http://api.openweathermap.org/data/2.5/forecast?zip=$zipCode';
    url = checkCountryCode(url, weatherCountryCodesString[countryCode]);
    url = addApiKey(url, apiKey);
    url = checkCnt(url, cnt);
    url = checkUnits(url, units);
    url = checkLang(url, lang);
    return url;
  }
}
