import '../../openweather_flutter.dart';

String checkUnits(String url, WeatherUnits? units) {
  if (units != null) {
    url = '$url&units=${weatherUnitsString[units]}';
  }
  return url;
}

String checkLang(String url, WeatherLangs? lang) {
  if (lang != null) {
    url = '$url&lang=${weatherLangsString[lang]}';
  }
  return url;
}

String checkCnt(String url, int? cnt) {
  if (cnt != null) {
    url = '$url&cnt=$cnt';
  }
  return url;
}

String checkLimit(String url, int? limit) {
  if (limit != null) {
    url = '$url&limit=$limit';
  }
  return url;
}

String checkCountryCode(String url, String? countryCode) {
  if (countryCode != null) {
    url = '$url,$countryCode';
  }
  return url;
}

/// Add the apiKey to the url
String addApiKey(String url, String apiKey) {
  return '$url&appid=$apiKey';
}
