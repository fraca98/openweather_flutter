import 'package:openweather_flutter/src/enums/weather_langs.dart';
import 'package:openweather_flutter/src/enums/weather_units.dart';
import 'package:openweather_flutter/src/url/url.dart';
import '../utils/utils_url.dart';

///[CurrentWeatherUrl] is a class that express multiple factory constructors to be used to generate OpenWeather API URL [CurrentWeatherData]
class CurrentWeatherUrl extends OpenWeatherUrl {
  ///Default [CurrentWeatherUrl] constructor
  CurrentWeatherUrl({required super.apiKey});

  String currentWeatherByCoordinates({
    required double lat,
    required double lon,
    WeatherUnits? units,
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
  /// Not recommended for use

  String? currentWeatherbyCityName({
    ///
    required String cityName,

    ///
    String? countryCode,

    ///
    WeatherUnits? units,

    ///
    WeatherLangs? lang,
  }) {
    String url;
    url = 'https://api.openweathermap.org/data/2.5/weather?q=$cityName';
    url = checkCountryCode(url, countryCode);
    url = addApiKey(url, apiKey);
    url = checkUnits(url, units);
    url = checkLang(url, lang);
    return url;
  }

  String? currentWeatherbyZipCode({
    ///
    required String zipCode,

    ///
    String? countryCode, //if not specified, zipCode is from USA
    ///
    WeatherUnits? units,

    ///
    WeatherLangs? lang,
  }) {
    String url;
    url = 'https://api.openweathermap.org/data/2.5/weather?zip=$zipCode';
    url = checkCountryCode(url, countryCode);
    url = addApiKey(url, apiKey);
    url = checkUnits(url, units);
    url = checkLang(url, lang);
    return url;
  }
}
