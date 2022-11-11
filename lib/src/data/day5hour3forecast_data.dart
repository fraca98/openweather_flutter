import 'package:openweather_flutter/openweather_flutter.dart';

/// [Day5Hour3ForecastData] is a class that provides info about the 5 day forecast weather with 3-hour step
class Day5Hour3ForecastData extends OpenWeatherData {
  /// A number of timestamps returned in the API response
  int? cnt;

  /// List of forecast weather
  List<Forecast>? forecast;

  /// General info about the city, sunrise and sunset
  City? city;

  /// Default [Day5Hour3ForecastData] constructor
  Day5Hour3ForecastData({this.cnt, this.forecast, this.city});

  Day5Hour3ForecastData.fromJson(Map<String, dynamic> json) {
    cnt = json['cnt'];
    if (json['list'] != null) {
      List<Forecast> forecast = [];
      json['list'].forEach((v) {
        forecast.add(Forecast.fromJson(v));
      });
    }
    city = json['city'] != null ? City.fromJson(json['city']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cnt'] = cnt;
    if (forecast != null) {
      data['list'] = forecast!.map((v) => v.toJson()).toList();
    }
    if (city != null) {
      data['city'] = city!.toJson();
    }
    return data;
  }
}

/// [Forecast] is a class that provides the info about the forecast weather
class Forecast {
  /// Time of data forecasted, unix, UTC
  int? dt;

  /// Main info about the weather
  WeatherMain? main;

  /// General info about the weather
  List<Weather>? weather;

  /// Info about the clouds
  Clouds? clouds;

  /// Info about the wind
  Wind? wind;

  /// Visibility, meter. The maximum value of the visibility is 10km
  int? visibility;

  /// Probability of precipitation. The values of the parameter vary between 0 and 1, where 0 is equal to 0%, 1 is equal to 100%
  double? pop;

  /// Info about the rain
  Rain? rain;

  /// Info about the snow
  Snow? snow;

  /// Part of the day (n - night, d - day)
  String? pod;

  /// Time of data forecasted, ISO, UTC
  String? dtTxt;

  Forecast(
      {this.dt,
      this.main,
      this.weather,
      this.clouds,
      this.wind,
      this.visibility,
      this.pop,
      this.rain,
      this.pod,
      this.dtTxt});

  Forecast.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    main = json['main'] != null ? WeatherMain.fromJson(json['main']) : null;
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather!.add(Weather.fromJson(v));
      });
    }
    clouds = json['clouds'] != null ? Clouds.fromJson(json['clouds']) : null;
    wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    visibility = json['visibility'];
    pop = json['pop'];
    rain = json['rain'] != null ? Rain.fromJson(json['rain']) : null;
    pod = json['sys'] != null ? json['sys']['pod'] : null;
    dtTxt = json['dt_txt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dt'] = dt;
    if (main != null) {
      data['main'] = main!.toJson();
    }
    if (weather != null) {
      data['weather'] = weather!.map((v) => v.toJson()).toList();
    }
    if (clouds != null) {
      data['clouds'] = clouds!.toJson();
    }
    if (wind != null) {
      data['wind'] = wind!.toJson();
    }
    data['visibility'] = visibility;
    data['pop'] = pop;
    if (rain != null) {
      data['rain'] = rain!.toJson();
    }
    if (pod != null) {
      data['sys']['pod'] = pod;
    }
    data['dt_txt'] = dtTxt;
    return data;
  }
}

/// [City] is a class that provides the general info about the city, sunrise and sunset
class City {
  /// City name
  String? name;

  /// Coordinates from the specified location (latitude, longitude)
  Coord? coord;

  /// Country code (GB, JP etc.)
  WeatherCountryCodes? country;

  /// City population
  int? population;

  /// Shift in seconds from UTC
  int? timezone;

  /// Sunrise time, Unix, UTC
  int? sunrise;

  /// Sunset time, Unix, UTC
  int? sunset;

  City(
      {this.name,
      this.coord,
      this.country,
      this.population,
      this.timezone,
      this.sunrise,
      this.sunset});

  City.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    coord = json['coord'] != null ? Coord.fromJson(json['coord']) : null;
    country = weatherCountryCodesStringReversed[json['country']];
    population = json['population'];
    timezone = json['timezone'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    if (coord != null) {
      data['coord'] = coord!.toJson();
    }
    data['country'] = weatherCountryCodesString[country];
    data['population'] = population;
    data['timezone'] = timezone;
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    return data;
  }
}
