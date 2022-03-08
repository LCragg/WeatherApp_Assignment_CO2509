import 'package:flutter/material.dart';
import 'Screens/Weather_app.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainWeatherApp(
        currentcity: "Chorley",
      ),
    );
  }
}
