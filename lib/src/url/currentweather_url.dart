import 'package:openweather_flutter/src/enums/weather_langs.dart';
import 'package:openweather_flutter/src/enums/weather_units.dart';
import 'package:openweather_flutter/src/url/url.dart';

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
    url = _checkUnits(url, units);
    url = _checkLang(url, lang);
    return url;
  }

  /*---Built in Geocoding---*/

  String? currentWeatherbyCityName({
    //if return null means error
    required String cityName,
    String? countryCode,
    String? stateCode,
    WeatherUnits? units,
    WeatherLangs? lang,
  }) {
    String url;
    if (countryCode == null && stateCode == null) {
      url =
          'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey';
    } else if (countryCode != null && stateCode == null) {
      url =
          'https://api.openweathermap.org/data/2.5/weather?q=$cityName,$countryCode&appid=$apiKey';
    } else if (countryCode != null && stateCode != null) {
      url =
          'https://api.openweathermap.org/data/2.5/weather?q=$cityName,$stateCode,$countryCode&appid=$apiKey';
    } else {
      return null; //countryCode == null && stateCode != null
    }

    url = _checkUnits(url, units);
    url = _checkLang(url, lang);
    return url;
  }

  String? currentWeatherbyZipCode({
    //if return null means error
    required String zipCode,
    String? countryCode, //if not specified, zipCode is from USA
    WeatherUnits? units,
    WeatherLangs? lang,
  }) {
    String url;
    if (countryCode != null) {
      url =
          'https://api.openweathermap.org/data/2.5/weather?zip=$zipCode,$countryCode&appid=$apiKey';
    } else {
      url =
          'https://api.openweathermap.org/data/2.5/weather?zip=$zipCode&appid=$apiKey';
    }

    url = _checkUnits(url, units);
    url = _checkLang(url, lang);
    return url;
  }
}

String _checkUnits(String url, WeatherUnits? units) {
  if (units != null) {
    url = '$url&units=${weatherUnitsString[units]}';
  }
  return url;
}

String _checkLang(String url, WeatherLangs? lang) {
  if (lang != null) {
    url = '$url&lang=${weatherLangsString[lang]}';
  }
  return url;
}
