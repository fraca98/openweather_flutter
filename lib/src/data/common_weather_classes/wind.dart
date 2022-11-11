/// [Wind] is a class that provides the info about the wind
class Wind {
  /// Wind speed. Unit Default (Standard): meter/sec, Metric: meter/sec, Imperial: miles/hour
  double? speed;

  /// Wind direction, degrees (meteorological)
  int? deg;

  /// Wind gust. Unit Default (Standard): meter/sec, Metric: meter/sec, Imperial: miles/hour
  double? gust;

  ///Default [Wind] constructor
  Wind({this.speed, this.deg, this.gust});

  Wind.fromJson(Map<String, dynamic> json) {
    speed = json['speed'];
    deg = json['deg'];
    gust = json['gust'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['speed'] = speed;
    data['deg'] = deg;
    data['gust'] = gust;
    return data;
  }
}
