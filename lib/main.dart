import 'package:flutter/material.dart';
import 'package:flutterweatherui/Screens/Settings.dart' as settings;
import 'Screens/Weather_app.dart';
import 'package:get/get.dart';

void main() => runApp(GetMaterialApp(
      title: "Weather App",
      home: MyApp(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
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
