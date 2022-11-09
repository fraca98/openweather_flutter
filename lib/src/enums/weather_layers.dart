/// enum that holds all the layer options for the Maps of [WeatherMaps10Url]
enum WeatherLayers { clouds, precipitation, pressure, wind, temperature }

/// Maps enum [WeatherLayers] to String value
Map<WeatherLayers, String> weatherLayersString = {
  WeatherLayers.clouds: 'clouds_new',
  WeatherLayers.precipitation: 'precipitation_new',
  WeatherLayers.pressure: 'pressure_new',
  WeatherLayers.wind: 'wind_new',
  WeatherLayers.temperature: 'temp_new',
};
