import 'package:openweather_flutter/openweather_flutter.dart';

class Day5Hour3ForecastUrl extends OpenWeatherUrl {
  Day5Hour3ForecastUrl({required super.apiKey});

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
    url = 'api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$lon';
    url = checkCnt(url, cnt);
    url = addApiKey(url, apiKey);
    url = checkUnits(url, units);
    url = checkLang(url, lang);
    return url;
  }

  /*---Built-in Geocoding---*/
  ///Not recommended

  String forecastByCityName({
    ///
    required String cityName,

    ///
    String? countryCode,

    /// A number of timestamps, which will be returned in the API response (To limit number of timestamps in the API response)
    int? cnt,

    /// Units of measurement. If you do not use the units parameter, standard units will be applied by default
    WeatherUnits? units,

    /// Use the lang parameter to get the output in your language
    WeatherLangs? lang,
  }) {
    String url;
    url = 'api.openweathermap.org/data/2.5/forecast?q=$cityName';
    url = checkCountryCode(url, countryCode);
    url = addApiKey(url, apiKey);
    url = checkCnt(url, cnt);
    url = checkUnits(url, units);
    url = checkLang(url, lang);
    return url;
  }

  String forecastByZipCode({
    ///
    required String zipCode,

    ///
    String? countryCode, //if not specified US

    /// A number of timestamps, which will be returned in the API response (To limit number of timestamps in the API response)
    int? cnt,

    /// Units of measurement. If you do not use the units parameter, standard units will be applied by default
    WeatherUnits? units,

    /// Use the lang parameter to get the output in your language
    WeatherLangs? lang,
  }) {
    String url;
    url = 'api.openweathermap.org/data/2.5/forecast?zip=$zipCode';
    url = checkCountryCode(url, countryCode);
    url = addApiKey(url, apiKey);
    url = checkCnt(url, cnt);
    url = checkUnits(url, units);
    url = checkLang(url, lang);
    return url;
  }
}
