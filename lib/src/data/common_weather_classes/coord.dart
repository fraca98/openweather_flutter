/// [Coord] is a class that provides the coordinates from the specified location (latitude, longitude)
class Coord {
  ///Geographical coordinates (longitude)
  double? lon;

  ///Geographical coordinates (latitude)
  double? lat;

  /// Default [Coord] constructor
  Coord({this.lon, this.lat});

  factory Coord.fromJson(Map<String, dynamic> json) {
    return Coord(
      lon: json['lon']?.toDouble(),
      lat: json['lat']?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lon'] = lon;
    data['lat'] = lat;
    return data;
  }
}
