/// [Weather] is a class that provides the general info about the weather
class Weather {
  /// Weather condition id
  int? id;

  /// Group of weather parameters (Rain, Snow, Extreme etc.)
  String? main;

  ///  Weather condition within the group. You can get the output in your language (use lang in the URL request)
  String? description;

  /// Weather icon id
  String? icon;

  /// Default [Weather] constructor
  Weather({this.id, this.main, this.description, this.icon});

  Weather.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['main'] = main;
    data['description'] = description;
    data['icon'] = icon;
    return data;
  }
}