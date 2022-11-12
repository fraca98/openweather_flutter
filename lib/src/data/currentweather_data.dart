import 'package:openweather_flutter/openweather_flutter.dart';

/// [CurrentWeatherData] is a class that provides info about the current weather
class CurrentWeatherData extends WeatherData {
  /// Coordinates from the specified location (latitude, longitude)
  Coord? coord;

  /// General info about the weather
  List<Weather>? weather;

  /// Main info about the weather
  WeatherMain? main;

  /// Visibility, meter. The maximum value of the visibility is 10km
  int? visibility;

  /// Info about the wind
  Wind? wind;

  /// Info about the rain
  Rain? rain;

  /// Info about the snow
  Snow? snow;

  /// Info about the clouds
  Clouds? clouds;

  /// Time of data calculation, unix, UTC
  int? dt;

  /// Info about country code, sunrise, sunset
  Sys? sys;

  /// Shift in seconds from UTC
  int? timezone;

  /// City name
  String? name;

  /// Default [CurrentWeatherData] constructor
  CurrentWeatherData({
    this.coord,
    this.weather,
    this.main,
    this.visibility,
    this.wind,
    this.rain,
    this.snow,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.name,
  });

  CurrentWeatherData.fromJson(Map<String, dynamic> json) {
    coord = json['coord'] != null ? Coord.fromJson(json['coord']) : null;
    weather = <Weather>[]; //TODO: check
    if (json['weather'] != null) {
      json['weather'].forEach((v) {
        weather!.add(Weather.fromJson(v));
      });
    }
    main = json['main'] != null ? WeatherMain.fromJson(json['main']) : null;
    visibility = json['visibility'];
    wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    rain = json['rain'] != null ? Rain.fromJson(json['rain']) : null;
    snow = json['snow'] != null ? Snow.fromJson(json['snow']) : null;
    clouds = json['clouds'] != null ? Clouds.fromJson(json['clouds']) : null;
    dt = json['dt'];
    sys = json['sys'] != null ? Sys.fromJson(json['sys']) : null;
    timezone = json['timezone'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (coord != null) {
      data['coord'] = coord!.toJson();
    }
    if (weather != null) {
      data['weather'] = weather!.map((v) => v.toJson()).toList();
    }
    if (main != null) {
      data['main'] = main!.toJson();
    }
    data['visibility'] = visibility;
    if (wind != null) {
      data['wind'] = wind!.toJson();
    }
    if (rain != null) {
      data['rain'] = rain!.toJson();
    }
    if (snow != null) {
      data['snow'] = snow!.toJson();
    }
    if (clouds != null) {
      data['clouds'] = clouds!.toJson();
    }
    data['dt'] = dt;
    if (sys != null) {
      data['sys'] = sys!.toJson();
    }
    data['timezone'] = timezone;
    data['name'] = name;
    return data;
  }
}

/// [Sys] is a class that provides the info about country code, sunrise, sunset
class Sys {
  /// Country code (GB, JP etc.)
  WeatherCountryCodes? country;

  /// Sunrise time, unix, UTC
  int? sunrise;

  /// Sunset time, unix, UTC
  int? sunset;

  Sys({this.country, this.sunrise, this.sunset});

  Sys.fromJson(Map<String, dynamic> json) {
    country = weatherCountryCodesStringReversed[json['country']];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['country'] = weatherCountryCodesString[country];
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    return data;
  }
}
