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

  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(
      speed: json['speed']?.toDouble(),
      deg: json['deg'],
      gust: json['gust']?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['speed'] = speed;
    data['deg'] = deg;
    data['gust'] = gust;
    return data;
  }
}
