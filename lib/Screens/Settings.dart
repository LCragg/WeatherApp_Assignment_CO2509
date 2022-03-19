// ignore_for_file: deprecated_member_use
import 'package:flutterweatherui/theme_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);
  @override
  MySettings createState() => MySettings();
}

class MySettings extends State<Settings> {
  TextEditingController tec = TextEditingController();
  String SavedText = "User";

  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late SharedPreferences prefs;
  getvalue() async {
    prefs = await _prefs;
    setState(() {
      SavedText = prefs.containsKey("savedString")
          ? prefs.getString("savedString")!
          : "";
    });
  }

  @override
  void initstate() {
    super.initState();
    getvalue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(380, 10, 0, 20),
          child: Text(
            "Hi $SavedText",
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
                Row(children: [
                  Container(
                    width: 500,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: "Enter Name"),
                      controller: tec,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          SavedText = tec.text;
                        });
                        prefs.setString("savedString", tec.text);
                        print("Name Saved");
                      },
                      child: Text("Save"))
                ]),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    height: 100.0,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        border: Border(
                      top: BorderSide(width: 1.0),
                      bottom: BorderSide(width: 1.0),
                    )),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 25, 0, 0),
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
                                    child: IconButton(
                                      icon: Icon(Icons.brightness_6),
                                      onPressed: () async {
                                        Provider.of<ThemeProvider>(context,
                                                listen:
                                                    false) //uses the provider from the theme functions to switch the themes when the button is pressed.
                                            .swapTheme();
                                      },
                                    )),
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
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(width: 1.0),
                  )),
                  child: ListTile(
                    title: Text(
                      "About", //About List tile button to take the user to the about page with some information about the app and data that is used.
                      style: GoogleFonts.nunitoSans(fontSize: 40.0),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutPage()),
                      );
                    },
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

class AboutPage extends StatelessWidget {
  //page that displays text about the app and what data the app uses to work.
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left_outlined, //back button on the app bar
            size: 40.0,
          ),
          onPressed: () {
            Navigator.pop(
                context); //sends the user back to where the navigator has brought them from
          },
        ),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Text(
          'All Weather data used within flutter weather app is provided by "openweathermap.org" All data has been gathered using the OpenWeatherMap API open source feature which can be found from the button below. This app is not for public production / development and is purely for University and Educational purposes. This app does not gather any personal Information about the user and will store no such data.',
        ),
      ),
    );
  }
}
