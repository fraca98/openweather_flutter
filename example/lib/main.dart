import 'package:example/utils.dart';
import 'package:flutter/material.dart';
import 'package:openweather_flutter/openweather_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  WeatherMaps10Data? imageMap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: imageMap != null
                  ? Image.memory(imageMap!.imageUint8!)
                  : const SizedBox(),
            ),
            ElevatedButton(
                child: const Text('Uncomment the line you want and get data'),
                onPressed: () async {
                  /*---CurrentWeather---*/
                  /*CurrentWeatherData currentweathercoord =
                      await CurrentWeatherManager().fetch(
                          CurrentWeatherUrl(apiKey: openWeatherKey)
                              .currentWeatherByCoordinates(
                                  lat: 55.2,
                                  lon: 22,
                                  lang: WeatherLangs.italian));*/

                  /*CurrentWeatherData currentweathercityname =
                    await CurrentWeatherManager().fetch(CurrentWeatherUrl(
                            apiKey: openWeatherKey)
                        .currentWeatherbyCityName(
                            cityName: 'Montgomery',
                            countryCode: WeatherCountryCodes
                                .guatemala));*/
                  /*CurrentWeatherData currentweatherzipcode =
                    await CurrentWeatherManager().fetch(
                        CurrentWeatherUrl(apiKey: openWeatherKey)
                            .currentWeatherbyZipCode(
                                zipCode: '24010',
                                countryCode: WeatherCountryCodes.italy,
                                units: WeatherUnits.metric,
                                lang: WeatherLangs.italian));*/

                  /*---AirPollution---*/
                  /*AirPollutionData airpollcurrent = await AirPollutionManager()
                    .fetch(AirPollutionUrl(apiKey: openWeatherKey)
                        .currentAirPollution(lat: -48451, lon: 0));*/
                  /*AirPollutionData airpollforecast = await AirPollutionManager()
                    .fetch(AirPollutionUrl(apiKey: openWeatherKey)
                        .forecastAirPollution(lat: 0, lon: 0));*/
                  /*AirPollutionData airpollhisto = await AirPollutionManager()
                    .fetch(AirPollutionUrl(apiKey: openWeatherKey)
                        .historicalAirPollution(
                            lat: 0,
                            lon: 0,
                            starttimestamp: 1667646232,
                            endtimestamp: 1667905432));
                            */

                  /*---Day5Hour3Forecast---*/
                  /*Day5Hour3ForecastData forecastByCoordinates =
                      await Day5Hour3ForecastManager().fetch(
                          Day5Hour3ForecastUrl(apiKey: openWeatherKey)
                              .forecastByCoordinates(
                                  lat: 51.085, lon: -55881, cnt: 0));
                  print(forecastByCoordinates);*/

                  /*Day5Hour3ForecastData forecastByCityName =
                      await Day5Hour3ForecastManager().fetch(
                          await Day5Hour3ForecastUrl(apiKey: openWeatherKey)
                              .forecastByCityName(
                                  cityName: 'London',
                                  countryCode: 'US',
                                  lang: WeatherLangs.french));
                  print(forecastByCityName);*/

                  /*Day5Hour3ForecastData forecastByZipCode =
                      await Day5Hour3ForecastManager().fetch(
                          Day5Hour3ForecastUrl(apiKey: openWeatherKey).forecastByZipCode(zipCode: '24010',countryCode: 'IT'));
                  print(forecastByZipCode);*/

                  /*---Geocoding---*/

                  List<GeocodingData> geoCoordinatesByLocationName =
                      await GeocodingManager().fetch(
                          GeocodingUrl(apiKey: openWeatherKey)
                              .coordinatesByLocationName(
                                  limit: 2, cityName: 'Rome'));
                  print(geoCoordinatesByLocationName);
                  print(geoCoordinatesByLocationName.length);

                  /*List<GeocodingData> geonameLocationByCoordinates =
                      await GeocodingManager().fetch(
                          GeocodingUrl(apiKey: openWeatherKey)
                              .nameLocationByCoordinates(
                                  lat: 6519814182, lon: -0.1180, limit: 1));
                  print(geonameLocationByCoordinates);
                  print(geonameLocationByCoordinates.length);*/

                  /*GeocodingData geoCoordinatesByZipCode =
                      await GeocodingManager().fetch(
                          GeocodingUrl(apiKey: openWeatherKey)
                              .coordinatesByZipCode(
                                  zipCode: '24010',
                                  countryCode: WeatherCountryCodes.italy));
                  print(geoCoordinatesByZipCode);*/

                  /*---WeatherMaps---*/
                  /*imageMap = await WeatherMaps10Manager().fetch(
                      WeatherMaps10Url(apiKey: openWeatherKey).getMap(
                          layer: WeatherLayers.temperature, z: 0, x: 0, y: 0));
                  setState(() {});*/
                }),
          ],
        ),
      ),
    );
  }
}
