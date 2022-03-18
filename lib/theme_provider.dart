import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeData _selectedTheme; //uses share prefs to store the current theme.
  late SharedPreferences prefs;

  ThemeData light = ThemeData.light().copyWith(
    //create the two different themes that will be used
    primaryColor: Colors.blue,
  );
  ThemeData dark = ThemeData.dark().copyWith(
    primaryColor: Colors.black,
  );

  ThemeProvider({required bool isDarkMode}) {
    _selectedTheme = isDarkMode ? dark : light;
  }

  Future<void> swapTheme() async {
    prefs = await SharedPreferences.getInstance();
    if (_selectedTheme == dark) {
      _selectedTheme =
          light; //future function to store the current theme as a shared preference.
      prefs.setBool("isDarkTheme", false);
    } else {
      _selectedTheme = dark;
      await prefs.setBool("isDarkTheme", true);
    }
    notifyListeners();
  }

  ThemeData get getTheme => _selectedTheme;
}
