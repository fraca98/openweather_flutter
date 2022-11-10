class AirPollutionData {
  List<int>? coord;
  List<ListAir>? list;

  AirPollutionData({this.coord, this.list});

  AirPollutionData.fromJson(Map<String, dynamic> json) {
    coord = json['coord'].cast<int>();
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

class ListAir {
  int? dt;
  int? aqi;
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

class Components {
  double? co;
  double? no;
  double? no2;
  double? o3;
  double? so2;
  double? pm25;
  double? pm10;
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
    co = json['co'];
    no = json['no'];
    no2 = json['no2'];
    o3 = json['o3'];
    so2 = json['so2'];
    pm25 = json['pm2_5'];
    pm10 = json['pm10'];
    nh3 = json['nh3'];
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
