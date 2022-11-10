import 'package:example/utils.dart';
import 'package:flutter/material.dart';
import 'package:openweather_flutter/openweather_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Get URL'),
          onPressed: () {
            /*---CurrentWeather---*/
            /*print(CurrentWeatherUrl(apiKey: openWeatherKey)
                .currentWeatherByCoordinates(
                    lat: 51.5085,
                    lon: -0.1257,
                    units: WeatherUnits.imperial,
                    lang: WeatherLangs.italian));*/

            /*print(CurrentWeatherUrl(apiKey: openWeatherKey).currentWeatherbyCityName(cityName: 'Montgomery'));*/
            /*print(CurrentWeatherUrl(apiKey: openWeatherKey).currentWeatherbyCityName(cityName: 'Montgomery',countryCode: 'GB));*/
            /*print(CurrentWeatherUrl(apiKey: openWeatherKey)
                .currentWeatherbyZipCode(zipCode: '24010', countryCode: WeatherCountryCodes.italy, units: WeatherUnits.metric, lang: WeatherLangs.italian));*/

            /*print(AirPollutionUrl(apiKey: openWeatherKey).currentAirPollution(lat: 51.085, lon: -0.1257));*/
            /*print(AirPollutionUrl(apiKey: openWeatherKey).forecastAirPollution(lat: 51.085, lon: -0.1257));*/
            /*print(AirPollutionUrl(apiKey: openWeatherKey).historicalAirPollution(lat: 51.085, lon: -0.1257, starttimestamp: 1667646232, endtimestamp: 1667905432));*/

            /*---Day5Hour3Forecast---*/
            /*print(Day5Hour3ForecastUrl(apiKey: openWeatherKey)
                .forecastByCoordinates(lat: 51.085, lon: -0.1257));*/
            /*print(Day5Hour3ForecastUrl(apiKey: openWeatherKey)
                .forecastByCityName(cityName: 'London',countryCode: 'US', lang: WeatherLangs.french));*/
            /*print(Day5Hour3ForecastUrl(apiKey: openWeatherKey).forecastByZipCode(zipCode: '24010',countryCode: 'IT'));*/

            /*---Geocoding---*/

            /*print(GeocodingUrl(apiKey: openWeatherKey)
                .coordinatesByLocationName(
                    cityName: 'London', countryCode: WeatherCountryCodes.unitedStatesOfAmerica));*/
            /*print(GeocodingUrl(apiKey: openWeatherKey)
                .nameLocationByCoordinates(lat: 51.085, lon: -0.1257));*/
            /*print(GeocodingUrl(apiKey: openWeatherKey)
                .coordinatesByZipCode(zipCode: '24010', countryCode: WeatherCountryCodes.italy));*/

            /*---WeatherMaps---*/
            /*print(WeatherMaps10Url(apiKey: openWeatherKey)
                .getMap(layer: WeatherLayers.pressure, z: 0, x: 0, y: 0));*/
          },
        ),
      ),
    );
  }
}
