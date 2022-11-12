/// [Snow] is a class that provides the info about the snow volume
class Snow {
  /// Snow volume for the last 1 hour, mm
  double? s1h;

  /// Snow volume for the last 3 hours, mm
  double? s3h;

  /// Default [Snow] constructor
  Snow({this.s1h, this.s3h});

  factory Snow.fromJson(Map<String, dynamic> json) {
    return Snow(s1h: json['1h']?.toDouble(), s3h: json['3h']?.toDouble());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['1h'] = s1h;
    data['3h'] = s3h;
    return data;
  }
}
