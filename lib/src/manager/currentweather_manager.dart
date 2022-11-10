import 'package:openweather_flutter/openweather_flutter.dart';

class CurrentWeatherManager extends WeatherManager{
  CurrentWeatherManager();
  
  @override
  Future<CurrentWeatherData> fetch(String url) async{
    final response = await getResponse(url);
    CurrentWeatherData data =CurrentWeatherData.fromJson(response);
    return data;
  }


}