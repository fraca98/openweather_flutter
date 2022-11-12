/// [WeatherMain] is a class that provides the main info about the weather
class WeatherMain {
  /// Temperature. Unit Default (Standard): Kelvin, Metric: Celsius, Imperial: Fahrenheit
  double? temp;

  /// Temperature. This temperature parameter accounts for the human perception of weather. Unit Default (Standard): Kelvin, Metric: Celsius, Imperial: Fahrenheit
  double? feelsLike;

  /// Minimum temperature at the moment. This is minimal currently observed temperature (within large megalopolises and urban areas). Unit Default (Standard): Kelvin, Metric: Celsius, Imperial: Fahrenheit
  double? tempMin;

  /// Maximum temperature at the moment. This is maximal currently observed temperature (within large megalopolises and urban areas). Unit Default (Standard): Kelvin, Metric: Celsius, Imperial: Fahrenheit
  double? tempMax;

  /// Atmospheric pressure (on the sea level, if there is no sea_level or grnd_level data), hPa
  int? pressure;

  /// Humidity, %
  int? humidity;

  /// Atmospheric pressure on the sea level, hPa
  int? seaLevel;

  /// Atmospheric pressure on the ground level, hPa
  int? grndLevel;

  /// Default [WeatherMain] constructor
  WeatherMain(
      {this.temp,
      this.feelsLike,
      this.tempMin,
      this.tempMax,
      this.pressure,
      this.humidity,
      this.seaLevel,
      this.grndLevel});

  factory WeatherMain.fromJson(Map<String, dynamic> json) {
    return WeatherMain(
      temp: json['temp']?.toDouble(),
      feelsLike: json['feels_like']?.toDouble(),
      tempMin: json['temp_min']?.toDouble(),
      tempMax: json['temp_max']?.toDouble(),
      pressure: json['pressure'],
      humidity: json['humidity'],
      seaLevel: json['sea_level'],
      grndLevel: json['grnd_level'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['temp'] = temp;
    data['feels_like'] = feelsLike;
    data['temp_min'] = tempMin;
    data['temp_max'] = tempMax;
    data['pressure'] = pressure;
    data['humidity'] = humidity;
    data['sea_level'] = seaLevel;
    data['grnd_level'] = grndLevel;
    return data;
  }
}
