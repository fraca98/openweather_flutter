/// [Rain] is a class that provides the info about the rain volume
class Rain {
  /// Rain volume for the last 1 hour, mm
  double? r1h;

  /// Rain volume for the last 3 hours, mm
  double? r3h;

  /// Default [Rain] constructor
  Rain({this.r1h, this.r3h});

  Rain.fromJson(Map<String, dynamic> json) {
    r1h = json['1h'];
    r3h = json['3h'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['1h'] = r1h;
    data['3h'] = r3h;
    return data;
  }
}
