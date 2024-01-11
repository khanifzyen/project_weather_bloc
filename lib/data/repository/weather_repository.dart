import 'dart:convert';

import '../data_provider/weather_data_provider.dart';

class WeatherRepository {
  final WeatherDataProvider weatherDataProvider;
  WeatherRepository(this.weatherDataProvider);

  Future<Map<String, dynamic>> getCurrentWeather() async {
    try {
      String cityName = 'Jepara';
      final weatherData = await weatherDataProvider.getCurrentWeather(cityName);

      final data = jsonDecode(weatherData);

      if (data['cod'] != 200) {
        throw 'An unexpedted error occured';
      }
      return data;
    } catch (e) {
      throw e.toString();
    }
  }
}
