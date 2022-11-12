import 'package:openweather_flutter/openweather_flutter.dart';

/// [GeocodingData] is a class that provides info for locations while working with geographic names and coordinates
class GeocodingData extends WeatherData {
  /// Name of the found location
  String? name;

  /// Name of the found location in different languages
  LocalNames? localNames;

  /// Geographical coordinates of the found location (latitude)
  double? lat;

  /// Geographical coordinates of the found location (longitude)
  double? lon;

  /// Country of the found location (Country code)
  WeatherCountryCodes? country;

  /// Specified zip/post code in the API request for [coordinatesByZipCode]
  String? zip;

  /// Default [GeocodingData] constructor
  GeocodingData(
      {this.name, this.localNames, this.lat, this.lon, this.country, this.zip});

  GeocodingData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    localNames = json['local_names'] != null
        ? LocalNames.fromJson(json['local_names'])
        : null;
    lat = json['lat'];
    lon = json['lon'];
    country = weatherCountryCodesStringReversed[json['country']];
    zip = json['zip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    if (localNames != null) {
      data['local_names'] = localNames!.toJson();
    }
    data['lat'] = lat;
    data['lon'] = lon;
    data['country'] = weatherCountryCodesString[country];
    data['zip'] = zip;
    return data;
  }
}

// TODO: implement enum languages here
///
class LocalNames {
  String? af;
  String? ar;
  String? az;
  String? bg;
  String? ca;
  String? da;
  String? de;
  String? el;
  String? en;
  String? eu;
  String? fa;
  String? fi;
  String? fr;
  String? gl;
  String? he;
  String? hi;
  String? hr;
  String? hu;
  String? id;
  String? it;
  String? ja;
  String? la;
  String? lt;
  String? mk;
  String? nl;
  String? no;
  String? pl;
  String? pt;
  String? ro;
  String? ru;
  String? sk;
  String? sl;
  String? sr;
  String? th;
  String? tr;
  String? vi;
  String? zu;

  LocalNames(
      {this.af,
      this.ar,
      this.az,
      this.bg,
      this.ca,
      this.da,
      this.de,
      this.el,
      this.en,
      this.eu,
      this.fa,
      this.fi,
      this.fr,
      this.gl,
      this.he,
      this.hi,
      this.hr,
      this.hu,
      this.id,
      this.it,
      this.ja,
      this.la,
      this.lt,
      this.mk,
      this.nl,
      this.no,
      this.pl,
      this.pt,
      this.ro,
      this.ru,
      this.sk,
      this.sl,
      this.sr,
      this.th,
      this.tr,
      this.vi,
      this.zu});

  LocalNames.fromJson(Map<String, dynamic> json) {
    af = json['af'];
    ar = json['ar'];
    az = json['az'];
    bg = json['bg'];
    ca = json['ca'];
    da = json['da'];
    de = json['de'];
    el = json['el'];
    en = json['en'];
    eu = json['eu'];
    fa = json['fa'];
    fi = json['fi'];
    fr = json['fr'];
    gl = json['gl'];
    he = json['he'];
    hi = json['hi'];
    hr = json['hr'];
    hu = json['hu'];
    id = json['id'];
    it = json['it'];
    ja = json['ja'];
    la = json['la'];
    lt = json['lt'];
    mk = json['mk'];
    nl = json['nl'];
    no = json['no'];
    pl = json['pl'];
    pt = json['pt'];
    ro = json['ro'];
    ru = json['ru'];
    sk = json['sk'];
    sl = json['sl'];
    sr = json['sr'];
    th = json['th'];
    tr = json['tr'];
    vi = json['vi'];
    zu = json['zu'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['af'] = af;
    data['ar'] = ar;
    data['az'] = az;
    data['bg'] = bg;
    data['ca'] = ca;
    data['da'] = da;
    data['de'] = de;
    data['el'] = el;
    data['en'] = en;
    data['eu'] = eu;
    data['fa'] = fa;
    data['fi'] = fi;
    data['fr'] = fr;
    data['gl'] = gl;
    data['he'] = he;
    data['hi'] = hi;
    data['hr'] = hr;
    data['hu'] = hu;
    data['id'] = id;
    data['it'] = it;
    data['ja'] = ja;
    data['la'] = la;
    data['lt'] = lt;
    data['mk'] = mk;
    data['nl'] = nl;
    data['no'] = no;
    data['pl'] = pl;
    data['pt'] = pt;
    data['ro'] = ro;
    data['ru'] = ru;
    data['sk'] = sk;
    data['sl'] = sl;
    data['sr'] = sr;
    data['th'] = th;
    data['tr'] = tr;
    data['vi'] = vi;
    data['zu'] = zu;
    return data;
  }
}
