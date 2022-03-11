import 'package:flutterweatherui/widget/Change_theme_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);
  @override
  MySettings createState() => MySettings();
}

class MySettings extends State<Settings> {
  bool togstatus = false;
  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'DarkTheme'
        : 'LightTheme';
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(380, 10, 0, 20),
          child: Text(
            "Settings",
            style: GoogleFonts.nunitoSans(fontSize: 40.0),
          ),
        ),
        elevation:
            0, //removes any shadow from the app bar to make it fully transparent
        leading: IconButton(
            icon: const Icon(
              Icons.chevron_left_outlined, //back button on the app bar
              size: 40.0,
            ),
            onPressed: () {
              Navigator.pop(
                  context); //sends the user back to where the navigator has brought them from
            }),
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
                      top: BorderSide(width: 1.0),
                      bottom: BorderSide(width: 1.0),
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
                                  style: GoogleFonts.nunitoSans(fontSize: 40.0),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(800, 25, 0, 0),
                                  child: ChangeThemeButtonWidget(),
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
                    bottom: BorderSide(width: 1.0),
                  )),
                  child: Center(
                    child: Text(
                      "Units", //change units section
                      style: GoogleFonts.nunitoSans(fontSize: 40.0),
                    ),
                  ),
                ),
                Container(
                  height: 100.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(width: 1.0),
                  )),
                  child: ListTile(
                    title: Center(
                      child: Text(
                        "Reset Favourites", //reset lists of favourites
                        style: GoogleFonts.nunitoSans(fontSize: 40.0),
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
