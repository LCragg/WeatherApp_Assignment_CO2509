import 'package:flutterweatherui/Screens/Weather_app.dart';
import 'package:flutterweatherui/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);
  @override
  MySettings createState() => MySettings();
}

class MySettings extends State<Settings> {
  bool togstatus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.fromLTRB(380, 10, 0, 20),
          child: Text(
            "Settings",
            style: TextStyle(color: Colors.black, fontSize: 40.0),
          ),
        ),
        elevation:
            0, //removes any shadow from the app bar to make it fully transparent
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(
              Icons.chevron_left_outlined, //back button on the app bar
              size: 40.0,
            ),
            onPressed: () {
              Navigator.pop(
                  context); //sends the user back to where the navigator has brought them from
            },
            color: Colors.black87),
      ),
      body: Container(
        width: double.infinity,
        alignment: Alignment.center, //container spans entire width of screen
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    height: 100.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border(
                      top: BorderSide(width: 1.0, color: Colors.black87),
                      bottom: BorderSide(width: 1.0, color: Colors.black87),
                    )),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Theme", //theme section
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 40.0),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(800, 25, 0, 0),
                                  child: IconButton(
                                    icon: Icon(Icons.lightbulb),
                                    onPressed: () {
                                      Get.isDarkMode
                                          ? Get.changeTheme(ThemeData.light())
                                          : Get.changeTheme(ThemeData.dark());
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(width: 1.0, color: Colors.black87),
                  )),
                  child: Center(
                    child: Text(
                      "Units", //change units section
                      style: TextStyle(color: Colors.black87, fontSize: 40.0),
                    ),
                  ),
                ),
                Container(
                  height: 100.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(width: 1.0, color: Colors.black87),
                  )),
                  child: ListTile(
                    title: Center(
                      child: Text(
                        "Reset Favourites", //reset lists of favourites
                        style: TextStyle(color: Colors.black87, fontSize: 40.0),
                      ),
                    ),
                    onTap: () {},
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
