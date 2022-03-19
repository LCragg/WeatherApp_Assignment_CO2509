import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutterweatherui/theme_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Screens/Weather_app.dart';

Future<void> main() async {
  SharedPreferences.getInstance().then((prefs) {
    var isDarkMode = prefs.getBool("darktheme") ?? false;
    return runApp(ChangeNotifierProvider<ThemeProvider>(
      child: MyApp(),
      create: (BuildContext context) =>
          ThemeProvider(isDarkMode: false), //theme sets as dark mode.
    ));
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return MaterialApp(
        title: "Weather",
        theme: themeProvider
            .getTheme, //uses the theme provider to change the themes
        home: MainWeatherApp(
          //sets the weather app as the home page
          currentcity: "Chorley",
          TUnit: "Metric", //sets default location and temp for the app.
        ),
      );
    });
  }
}
