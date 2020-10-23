//mport './event_by_weather.dart';
import './weather.dart';
//import './service_of_weather.dart';
import './interfaser_weather.dart';
//import './business_logic_component.dart';
import 'package:flutter/material.dart';
//import './interfaser_weather_for_some_hours.dart';

class HourlyWeather extends StatelessWidget {
  final List<Weather> hourlyWeather;

  const HourlyWeather({Key key, this.hourlyWeather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200.0,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hourlyWeather.length,
            itemBuilder: (context, i) {
              return WeatherCard(
                title:
                    '${hourlyWeather[i].time.hour}:${hourlyWeather[i].time.minute}0',
                temperature: hourlyWeather[i].temperature.toInt(),
                iconCode: hourlyWeather[i].iconCode,
                temperatureFontSize: 20,
              );
            }));
  }
}