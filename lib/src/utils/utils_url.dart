import '../../openweather_flutter.dart';

/// Check if units is present in the call and if present add it to the URL
String checkUnits(String url, WeatherUnits? units) {
  if (units != null) {
    url = '$url&units=${weatherUnitsString[units]}';
  }
  return url;
}

/// Check if lang (language) is present in the call and if present add it to the URL
String checkLang(String url, WeatherLangs? lang) {
  if (lang != null) {
    url = '$url&lang=${weatherLangsString[lang]}';
  }
  return url;
}

/// Check if cnt (count) is present in the call and if present add it to the URL
String checkCnt(String url, int? cnt) {
  if (cnt != null) {
    url = '$url&cnt=$cnt';
  }
  return url;
}

/// Check if limit is present in the call and if present add it to the URL
String checkLimit(String url, int? limit) {
  if (limit != null) {
    url = '$url&limit=$limit';
  }
  return url;
}
/// Check if countryCode is present in the call and if present add it to the URL
String checkCountryCode(String url, String? countryCode) {
  if (countryCode != null) {
    url = '$url,$countryCode';
  }
  return url;
}

/// Add the apiKey to the URL
String addApiKey(String url, String apiKey) {
  return '$url&appid=$apiKey';
}
