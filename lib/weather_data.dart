import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/weatherModel.dart';

class WeatherData
{
  Future<Weather> getData(var latitude,var longitude) async
  {
    var uricall = Uri.parse('http://api.weatherapi.com/v1/current.json?key=fece05e3b4374edea16105536223107&q=$latitude,$longitude&aqi=yes');

    var response = await http.get(uricall);
    var body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}