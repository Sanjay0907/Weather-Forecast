import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/location_screen.dart';
import 'package:weather_forecast/services/weather.dart';








class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {

    var weatherData = await WeatherModel().getWeatherLocation();


    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(locationWeather: weatherData,);
    }));

    // String weatherDetails = decodeData['weather'][0]['main'];
    // double temperature = decodeData['main']['temp'];
    // int condition = decodeData['weather'][0]['id'];
    // String cityName = decodeData['name'];
    //
    // print('Latitude          : $latitude');
    // print('Longitude         : $longitude');
    // print('Weather Condition : $weatherDetails');
    // print('Temperature       : $temperature');
    // print('Condition         : $condition');
    // print('City Name         : $cityName');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

