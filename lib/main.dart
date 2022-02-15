import 'package:flutter/material.dart';
import 'Screens/Weather_app.dart';

void main() => runApp(MaterialApp(
      title: "Weather App",
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  //create stateful widget for the application
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return WeatherApp(); //weather app file used as the main source for code.
  }
}
