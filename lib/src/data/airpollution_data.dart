import 'package:openweather_flutter/openweather_flutter.dart';

/// [AirPollutionData] is a class that provides current, forecast and historical air pollution data for any coordinates on the globe
class AirPollutionData implements WeatherData {
  /// Coordinates from the specified location (latitude, longitude)
  Coord? coord;

  /// Object that contains value about air pollution
  List<ListAir>? list;

  /// Default [AirPollutionData] constructor
  AirPollutionData({this.coord, this.list});

  @override
  AirPollutionData.fromJson(Map<String, dynamic> json) {
    coord = json['coord'] != null ? Coord.fromJson(json['coord']) : null;
    if (json['list'] != null) {
      list = <ListAir>[];
      json['list'].forEach((v) {
        list!.add(ListAir.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['coord'] = coord;
    if (list != null) {
      data['list'] = list!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

/// Object that contains value about air pollution
class ListAir {
  /// Date and time, Unix, UTC
  int? dt;

  /// Air Quality Index. Possible values: 1, 2, 3, 4, 5. Where 1 = Good, 2 = Fair, 3 = Moderate, 4 = Poor, 5 = Very Poor
  int? aqi;

  /// Oject that contains data of the polluting gases
  Components? components;

  ListAir({this.dt, this.aqi, this.components});

  ListAir.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    aqi = json['main']['aqi'];
    components = json['components'] != null
        ? Components.fromJson(json['components'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dt'] = dt;
    data['main']['aqi'] = aqi;
    if (components != null) {
      data['components'] = components!.toJson();
    }
    return data;
  }
}

/// Oject that contains data of the polluting gases
class Components {
  /// Сoncentration of CO (Carbon monoxide), μg/m3
  double? co;

  /// Сoncentration of NO (Nitrogen monoxide), μg/m3
  double? no;

  /// Сoncentration of NO2 (Nitrogen dioxide), μg/m3
  double? no2;

  /// Сoncentration of O3 (Ozone), μg/m3
  double? o3;

  /// Сoncentration of SO2 (Sulphur dioxide), μg/m3
  double? so2;

  ///  Сoncentration of PM2.5 (Fine particles matter), μg/m3
  double? pm25;

  /// Сoncentration of PM10 (Coarse particulate matter), μg/m3
  double? pm10;

  /// Сoncentration of NH3 (Ammonia), μg/m3
  double? nh3;

  Components(
      {this.co,
      this.no,
      this.no2,
      this.o3,
      this.so2,
      this.pm25,
      this.pm10,
      this.nh3});

  Components.fromJson(Map<String, dynamic> json) {
    co = json['co']?.toDouble();
    no = json['no']?.toDouble();
    no2 = json['no2']?.toDouble();
    o3 = json['o3']?.toDouble();
    so2 = json['so2']?.toDouble();
    pm25 = json['pm2_5']?.toDouble();
    pm10 = json['pm10']?.toDouble();
    nh3 = json['nh3']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['co'] = co;
    data['no'] = no;
    data['no2'] = no2;
    data['o3'] = o3;
    data['so2'] = so2;
    data['pm2_5'] = pm25;
    data['pm10'] = pm10;
    data['nh3'] = nh3;
    return data;
  }
}
