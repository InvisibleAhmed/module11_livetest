import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class WeatherInfo {
  final String city;
  final int temperature;
  final String condition;
  final int humidity;
  final double windSpeed;

  WeatherInfo({
    required this.city,
    required this.temperature,
    required this.condition,
    required this.humidity,
    required this.windSpeed,
  });
}

void displayWeather(List<WeatherInfo> weatherData) {
  for (var info in weatherData) {
    print('City: ${info.city}');
    print('Temperature: ${info.temperature}°C');
    print('Condition: ${info.condition}');
    print('Humidity: ${info.humidity}%');
    print('Wind Speed: ${info.windSpeed} km/h');
    print('---');
  }
}

class MyApp extends StatelessWidget {
  final List<WeatherInfo> weatherData = [
    WeatherInfo(
      city: "New York",
      temperature: 20,
      condition: "Clear",
      humidity: 60,
      windSpeed: 5.5,
    ),
    WeatherInfo(
      city: "Los Angeles",
      temperature: 25,
      condition: "Sunny",
      humidity: 50,
      windSpeed: 6.8,
    ),
    WeatherInfo(
      city: "London",
      temperature: 15,
      condition: "Partly Cloudy",
      humidity: 70,
      windSpeed: 4.2,
    ),
    WeatherInfo(
      city: "Tokyo",
      temperature: 28,
      condition: "Rainy",
      humidity: 75,
      windSpeed: 8.0,
    ),
    WeatherInfo(
      city: "Sydney",
      temperature: 22,
      condition: "Cloudy",
      humidity: 55,
      windSpeed: 7.3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weather Info App'),
        ),
        body: ListView.builder(
          itemCount: weatherData.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('City: ${weatherData[index].city}'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Temperature: ${weatherData[index].temperature}°C'),
                    Text('Condition: ${weatherData[index].condition}'),
                    Text('Humidity: ${weatherData[index].humidity}%'),
                    Text('Wind Speed: ${weatherData[index].windSpeed} km/h'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
