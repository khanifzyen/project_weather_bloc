import 'package:http/http.dart' as http;
import '../../utils/constant.dart';

class WeatherDataProvider {
  Future<String> getCurrentWeather(String cityName) async {
    try {
      final url =
          'https://api.openweathermap.org/data/2.5/forecast?q=$cityName&appid=$openWeatherAPIKey';
      final res = await http.get(
        Uri.parse(url),
      );

      return res.body;
    } catch (e) {
      throw e.toString();
    }
  }
}
