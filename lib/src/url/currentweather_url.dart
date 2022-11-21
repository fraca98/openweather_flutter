import 'package:openweather_flutter/src/enums/weather_countrycodes.dart';
import 'package:openweather_flutter/src/enums/weather_langs.dart';
import 'package:openweather_flutter/src/enums/weather_units.dart';
import 'package:openweather_flutter/src/url/url.dart';
import '../utils/utils_url.dart';

///[CurrentWeatherUrl] is a class that express multiple methods to be used to generate OpenWeather API URL String to get [CurrentWeatherData]
class CurrentWeatherUrl extends WeatherUrl {
  ///Default [CurrentWeatherUrl] constructor
  CurrentWeatherUrl({required super.apiKey});

  /// Generates a URL [String] to get current [CurrentWeatherData] given coordinates
  String currentWeatherByCoordinates({
    /// Geographical coordinates (latitude)
    required double lat,

    /// Geographical coordinates (longitude)
    required double lon,

    /// Units of measurement. If you do not use the units parameter, standard units will be applied by default
    WeatherUnits? units,

    /// Use the lang parameter to get the output in your language
    WeatherLangs? lang,
  }) {
    String url;
    url =
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey';
    url = checkUnits(url, units);
    url = checkLang(url, lang);
    return url;
  }

  /*---Built in Geocoding---*/
  /// Not recommended for use cause it uses Built in Geocoding!
  /// Generates a URL [String] to get current [CurrentWeatherData] given the city name
  String currentWeatherbyCityName({
    /// City name.
    required String cityName,

    /// Country code. Please use ISO 3166 country codes
    WeatherCountryCodes? countryCode,

    /// Units of measurement. If you do not use the units parameter, standard units will be applied by default
    WeatherUnits? units,

    /// Use the lang parameter to get the output in your language
    WeatherLangs? lang,
  }) {
    String url;
    url = 'https://api.openweathermap.org/data/2.5/weather?q=$cityName';
    url = checkCountryCode(url, weatherCountryCodesString[countryCode]);
    url = addApiKey(url, apiKey);
    url = checkUnits(url, units);
    url = checkLang(url, lang);
    return url;
  }

  /// Not recommended for use cause it uses Built in Geocoding!
  /// Generates a URL [String] to get current [CurrentWeatherData] given the Zip code
  String currentWeatherbyZipCode({
    /// Zip code
    required String zipCode,

    /// Country code. Please use ISO 3166 country codes. If not specified uses "US" country code
    WeatherCountryCodes? countryCode,

    /// Units of measurement. If you do not use the units parameter, standard units will be applied by default
    WeatherUnits? units,

    /// Use the lang parameter to get the output in your language
    WeatherLangs? lang,
  }) {
    String url;
    url = 'https://api.openweathermap.org/data/2.5/weather?zip=$zipCode';
    url = checkCountryCode(url, weatherCountryCodesString[countryCode]);
    url = addApiKey(url, apiKey);
    url = checkUnits(url, units);
    url = checkLang(url, lang);
    return url;
  }
}
