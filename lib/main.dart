import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutterweatherui/theme_provider.dart';
import 'Screens/Weather_app.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            title: "Weather",
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            home: MainWeatherApp(currentcity: "Chorley"),
          );
        },
      );
}
