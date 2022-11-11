/// [Coord] is a class that provides the coordinates from the specified location (latitude, longitude)
class Coord {
  ///Geographical coordinates (longitude)
  double? lon;

  ///Geographical coordinates (latitude)
  double? lat;

  /// Default [Coord] constructor
  Coord({this.lon, this.lat});

  Coord.fromJson(Map<String, dynamic> json) {
    lon = json['lon'];
    lat = json['lat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lon'] = lon;
    data['lat'] = lat;
    return data;
  }
}
