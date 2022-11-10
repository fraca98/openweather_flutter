/// enum that holds all the weather unit related options
enum WeatherUnits {
  /// For temperature in Kelvin. It's used by default if not specified
  standard,

  /// For temperature in Celsius
  metric,

  /// For temperature in Fahrenheit
  imperial
}

/// Maps enum [WeatherUnits] to String value
Map<WeatherUnits, String> weatherUnitsString = {
  WeatherUnits.imperial: 'imperial',
  WeatherUnits.metric: 'metric',
  WeatherUnits.standard: 'standard'
};
