import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather_app/Models/weather_model.dart';

class WeatherServices
{
  final Dio dio;
  final String baseUrl='http://api.weatherapi.com/v1';
  final String apiKey='dee10d8dffdc46dab5b220418243006';
  WeatherServices(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async
  {

      Response response = await dio.get(
          '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
      try {
        WeatherModel weatherModel = WeatherModel.fromJson(response.data);
        return weatherModel;
      }
      on DioException catch(e)
    {
      final String errorMessage=response.data['data']['message']?? "oops there was an error , try later";
      throw Exception(errorMessage);
    }
    catch(e)
    {
      log(e.toString());
      throw Exception("oops there was an error , try later");
    }
  }
}