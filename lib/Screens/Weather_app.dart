import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutterweatherui/Screens/Settings.dart';
import 'package:flutterweatherui/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'dart:html';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:intl/intl.dart';

class WeatherApp extends State<MyApp> {
  final Color BackLB = const Color(0xFF00c2ff);
  final Color BackDB = const Color(0xFF0085ff);
  final Color ExtraB = const Color(0xFF45a3f7);
  var temp;
  var description;
  var currently;
  var humidity;
  var windspeed;

  Future getWeather() async {
    http.Response response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=Preston&units=metric&appid=8e4806ff7961f456e5ef068da0cf3e9b"));

    var results = jsonDecode(response.body);
    setState(() {
      this.temp = results['main']['temp'];
      this.description = results['weather'][0]['description'];
      this.currently = results['weather'][0]['main'];
      this.humidity = results['main']['humidity'];
      this.windspeed = results['wind']['speed'];
    });
  }

  @override
  void initState() {
    super.initState();
    this.getWeather();
  }

  Widget box({width: 200.0, height: 150.0}) {
    return Container(
      width: width,
      height: height,
      color: Colors.grey,
    );
  }
  /* 
  void NavigateToSettings(BuildContext context) {
    Navigator.of(context)
        .push(new MaterialPageRoute(builder: (context) => new Settings()));
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.transparent,
        elevation: 0, //remove app bar shadow.
        leading: IconButton(
          icon: Icon(
            Icons.settings,
            size: 35,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Settings()),
            );
          },
        ),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: GestureDetector(
              onTap: () => print("Menu Clicked"),
              child: SvgPicture.asset(
                'assets/plus.svg',
                height: 30,
                width: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            BackLB,
            BackDB,
          ],
        )),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.black12),
            ),
            Container(
              alignment: Alignment(0.0, 0.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 120),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "Preston", //location Text
                              style: GoogleFonts.nunitoSans(
                                fontSize: 50,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text(
                                temp != null
                                    ? temp.toString() + "\u00b0C"
                                    : "Loading...", //Weather Text
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 70,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text(
                              'L:5° H:10°', //High Low Text
                              style: GoogleFonts.nunitoSans(
                                fontSize: 45,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                              currently != null
                                  ? currently.toString()
                                  : "Loading...", //Weather Text
                              style: GoogleFonts.nunitoSans(
                                fontSize: 40,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white60,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                              child: Container(
                                alignment: Alignment.center,
                                width: 200,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: ExtraB,
                                ),
                                child: Text(
                                  humidity != null
                                      ? humidity.toString() + "%"
                                      : "Loading...",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                            child: Container(
                              alignment: Alignment.center,
                              width: 200.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                color: ExtraB,
                              ),
                              child: Text(
                                windspeed != null
                                    ? windspeed.toString() + 'mph'
                                    : 'Loading...',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
