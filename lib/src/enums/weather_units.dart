/// enum that holds all the weather unit related options
enum WeatherUnits { standard, metric, imperial }

/// Maps enum [WeatherUnits] to String value
Map<WeatherUnits, String> weatherUnitsString = {
  WeatherUnits.imperial: 'imperial',
  WeatherUnits.metric: 'metric',
  WeatherUnits.standard: 'standard'
};