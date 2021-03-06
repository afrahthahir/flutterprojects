import 'package:clima/services/networking.dart';
import 'package:clima/services/location.dart';

const String apikey = '3c26f85dc20d01f3093d8b5d3498b112';
const String openweathermapURL =
    'http://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getcityWeather(String cityName) async {
    NetworkHelper networkhelper = NetworkHelper(
        Uri.parse('$openweathermapURL?q=$cityName&appid=$apikey&units=metric'));

    var weatherData = await networkhelper.getData();
    return weatherData;
  }

  Future<dynamic> getlocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkhelper = NetworkHelper(Uri.parse(
        '$openweathermapURL?lat=${location.latitude}&lon=${location.longitude}&appid=$apikey&units=metric'));

    var weatherData = await networkhelper.getData();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'Time for shorts and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }
}
