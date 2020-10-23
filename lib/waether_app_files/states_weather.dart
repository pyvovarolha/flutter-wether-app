//import './event_by_weather.dart';
import './weather.dart';
//import './service_of_weather.dart';
//import './states_weather.dart';
//import './business_logic_component.dart';
import 'package:flutter/material.dart';
//import './interfaser_weather_for_some_hours.dart';
import 'package:equatable/equatable.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoadInProgress extends WeatherState {}

class WeatherLoadSuccess extends WeatherState {
  final Weather weather;
  final List<Weather> hourlyWeather;

  const WeatherLoadSuccess(
      {@required this.weather, @required this.hourlyWeather})
      : assert(weather != null);

  @override
  List<Object> get props => [weather];
}

class WeatherLoadFailure extends WeatherState {}