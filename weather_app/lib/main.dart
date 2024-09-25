import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Views/home_view.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(        // this widget to make context different about the main context
        builder: (context) => BlocBuilder<GetWeatherCubit,WeatherState>
          ( builder: (context,state)
        {
          return MaterialApp(
            theme: ThemeData(
              useMaterial3: false,
              primarySwatch: getThemeColor(BlocProvider.of<GetWeatherCubit>(context).weatherModel?.condition),
            ),
            debugShowCheckedModeBanner: false,
            home: const HomeView(),
          );
        }),
    ),
    );
  }
}

MaterialColor getThemeColor(String? condition) {
  if (condition==null)
    {
      return Colors.blue;
    }
  switch (condition) {
    case "Sunny":
    case "Clear":
      return Colors.orange;
    case "Partly cloudy":
      return Colors.grey;
    case "Cloudy":
      return Colors.blueGrey;
    case "Overcast":
      return Colors.grey;
    case "Mist":
    case "Fog":
    case "Freezing fog":
      return Colors.grey;
    case "Patchy rain possible":
    case "Light drizzle":
    case "Freezing drizzle":
    case "Heavy freezing drizzle":
    case "Patchy light rain":
    case "Light rain":
    case "Moderate rain at times":
    case "Moderate rain":
    case "Heavy rain at times":
    case "Heavy rain":
    case "Light freezing rain":
    case "Moderate or heavy freezing rain":
    case "Light sleet":
    case "Moderate or heavy sleet":
    case "Light rain shower":
    case "Moderate or heavy rain shower":
    case "Torrential rain shower":
    case "Light sleet showers":
    case "Moderate or heavy sleet showers":
    case "Patchy light rain with thunder":
    case "Moderate or heavy rain with thunder":
      return Colors.blue;
    case "Patchy snow possible":
    case "Patchy sleet possible":
    case "Patchy freezing drizzle possible":
    case "Blowing snow":
    case "Blizzard":
    case "Patchy light snow":
    case "Light snow":
    case "Patchy moderate snow":
    case "Moderate snow":
    case "Patchy heavy snow":
    case "Heavy snow":
    case "Ice pellets":
    case "Light snow showers":
    case "Moderate or heavy snow showers":
    case "Light showers of ice pellets":
    case "Moderate or heavy showers of ice pellets":
    case "Patchy light snow with thunder":
    case "Moderate or heavy snow with thunder":
      return Colors.lightBlue;
    case "Thundery outbreaks possible":
      return Colors.yellow;
    default:
      return Colors.grey;
  }
}