import 'package:flutterweatherui/Screens/Weather_app.dart';
import 'package:flutterweatherui/main.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.fromLTRB(380, 10, 0, 20),
          child: Text(
            "Settings",
            style: TextStyle(color: Colors.black87, fontSize: 40.0),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(
              Icons.chevron_left_outlined,
              size: 40.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black87),
      ),
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                        border: Border(
                      top: BorderSide(width: 1.0, color: Colors.black87),
                      bottom: BorderSide(width: 1.0, color: Colors.black87),
                    )),
                    child: Center(
                      child: Text(
                        "Theme",
                        style: TextStyle(color: Colors.black87, fontSize: 40.0),
                      ),
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
                      "Units",
                      style: TextStyle(color: Colors.black87, fontSize: 40.0),
                    ),
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
