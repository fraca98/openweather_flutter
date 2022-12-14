/// [Clouds] is a class that provides the info about the cloudiness
class Clouds {
  /// Cloudiness, %
  int? all;

  /// Default [Clouds] constructor
  Clouds({this.all});

  factory Clouds.fromJson(Map<String, dynamic> json) {
    return Clouds(
      all: json['all'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['all'] = all;
    return data;
  }
}
