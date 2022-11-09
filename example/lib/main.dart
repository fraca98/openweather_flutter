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
            print(CurrentWeatherUrl(apiKey: openWeatherKey)
                .currentWeatherByCoordinates(
                    lat: 51.5085,
                    lon: -0.1257,
                    units: WeatherUnits.imperial,
                    lang: WeatherLangs.italian));
            print(WeatherMaps10Url(apiKey: openWeatherKey)
                .getMap(layer: WeatherLayers.pressure, z: 0, x: 0, y: 0));
          },
        ),
      ),
    );
  }
}
