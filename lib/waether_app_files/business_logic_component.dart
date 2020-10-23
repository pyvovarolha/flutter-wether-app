import './event_by_weather.dart';
import './weather.dart';
import './service_of_weather.dart';
import './states_weather.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
/*import './business_logic_component.dart';
import 'package:flutter/material.dart';
import './interfaser_weather_for_some_hours.dart';*/

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final String cityName;
  WeatherBloc(this.cityName) : super(null) {
    add(WeatherRequested(city: cityName));
  }

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is WeatherRequested) {
      yield WeatherLoadInProgress();
      try {
        final Weather weather =
            await WeatherService.fetchCurrentWeather(query: event.city);
        final List<Weather> hourlyWeather =
            await WeatherService.fetchHourlyWeather(query: event.city);
        yield WeatherLoadSuccess(
            weather: weather, hourlyWeather: hourlyWeather);
      } catch (_) {
        yield WeatherLoadFailure();
      }
    }
  }
}