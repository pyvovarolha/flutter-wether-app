/*import './event_by_weather.dart';
import './weather.dart';
import './service_of_weather.dart';
import './states_weather.dart';
import './business_logic_component.dart';
import 'package:flutter/material.dart';
import './interfaser_weather_for_some_hours.dart';*/
import 'package:equatable/equatable.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();
}

class WeatherRequested extends WeatherEvent {
  final String city;
  final String lat;
  final String lon;

  const WeatherRequested({this.city = "", this.lat = "", this.lon = ""})
      : assert(city != null);

  @override
  List<Object> get props => [city];
}