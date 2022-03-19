import 'dart:convert';
import 'dart:async';
import 'package:flutterweatherui/Screens/Locations.dart';
import 'package:flutterweatherui/theme_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutterweatherui/Screens/Settings.dart';
//all packages imported for the design

class MainWeatherApp extends StatefulWidget {
  String currentcity = "Chorley"; //set the default location for the app
  String TUnit = "Metric";
  MainWeatherApp({required this.currentcity, required this.TUnit});
  WeatherApp createState() => WeatherApp(currentcity, TUnit);
}

class WeatherApp extends State<MainWeatherApp> {
  StreamSubscription? internetconnection;
  String currentcity = "Chorley";
  WeatherApp(this.currentcity, this.TUnit);
  String TUnit = "Metric";

  final Color BackLB = const Color(0xFF00c2ff); //setting final variables for
  final Color BackDB = const Color(0xFF0085ff); //main colours that are used in
  final Color ExtraB = const Color(0xFF45a3f7); //the app
  var temp; //setting the variables that are used to grab info from the api
  var tempmin;
  var tempmax;
  var description;
  var currently;
  var humidity;
  var windspeed; //setting of global variables to get dynamic

  Future getWeather() async {
    String apiKey = "8e4806ff7961f456e5ef068da0cf3e9b";
    //store the api key used for OpenWeatherMap URI
    http.Response response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=${widget.currentcity}&units=$TUnit&appid=$apiKey"));
    //call the OpenWeatherMap URI to get the live weather data from the api.
    var results = jsonDecode(response.body);
    setState(() {
      //gets the information required from the api.
      //sets the states of all the variables initiated above.
      //required for having the dynamic live weather updates.
      this.temp = results['main']['temp'];
      this.tempmin = results['main']['temp_min'];
      this.tempmax = results['main']['temp_max'];
      this.description = results['weather'][0]['description'];
      this.currently = results['weather'][0]['main'];
      this.humidity = results['main']['humidity'];
      this.windspeed = results['wind']['speed'];
    });
  }

  @override
  void initState() {
    super.initState();
    this.getWeather(); //set the get weather method as the initial state so
  } //that it is the first thing to load when the app is opened.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      //makes the background cover the entire height of the screen including the appbar
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.transparent,
        elevation: 0, //remove app bar shadow.
        leading: IconButton(
          icon: const Icon(
            Icons.settings,
            size: 35,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                //navigates to the settings page/settings screen within the project
                context,
                MaterialPageRoute(builder: (context) => Settings()));
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
            child: IconButton(
              icon: const Icon(
                //navigates to the locations page
                Icons.add_location_alt_outlined,
                size: 35,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Locations()));
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              //create a gradient background for the app
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  BackLB, //set the colours for the background.
                  BackDB,
                ],
              ),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(color: Colors.black12),
                ), //adds a dark filter on the screen to make the white text clearer.
                Container(
                  alignment: const Alignment(0.0, 0.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Column(
                            children: [
                              Text("Units",
                                  style: GoogleFonts.nunitoSans(fontSize: 25)),
                              Container(
                                height: 40,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    //container which allows for the user to change the temperature units used.
                                    Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 10, 10, 0),
                                        child: ElevatedButton(
                                          onPressed: () async {
                                            setState(() {
                                              TUnit =
                                                  "Metric"; //sets the TUnit state as Metric. Displays the
                                            }); //temperature as Celsius
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    MainWeatherApp(
                                                        currentcity:
                                                            currentcity,
                                                        TUnit: TUnit),
                                              ),
                                            );
                                          },
                                          child: (const Text("Celsius")),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 10, 0, 0),
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          setState(() {
                                            TUnit = "Imperial";
                                          }); //sets the Unit as Imperial so displays the temp as Fahrenheit
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  MainWeatherApp(
                                                      currentcity: currentcity,
                                                      TUnit: TUnit),
                                            ),
                                          );
                                        },
                                        child: (const Text("Fahrenheit")),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 80),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Text(
                                  '${widget.currentcity}', //location Text
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 60,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Column(children: [
                                if (TUnit == "Metric") ...[
                                  Text(
                                    temp != null //text for the current temp
                                        ? temp.toString() +
                                            "\u00b0C" //degrees celsius symbol
                                        : "Loading...",
                                    //displays loading if there is an issue getting the info from api.
                                    style: GoogleFonts.nunitoSans(
                                      fontSize: 70,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  )
                                ] else if (TUnit == "Imperial") ...[
                                  Text(
                                    temp != null //text for the current temp
                                        ? temp.toString() +
                                            "\u00b0F" //degrees celsius symbol
                                        : "Loading...",
                                    //displays loading if there is an issue getting the info from api.
                                    style: GoogleFonts.nunitoSans(
                                      fontSize: 70,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  )
                                ]
                              ]),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 0, 0),
                                      child: Text(
                                        tempmin != null
                                            ? tempmin.toString() + "\u00b0"
                                            : "Loading", //Daily Low Temp
                                        style: GoogleFonts.nunitoSans(
                                          fontSize: 45,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 0, 0),
                                      child: Text(
                                        tempmax != null
                                            ? tempmax.toString() + "\u00b0"
                                            : "Loading", //Daily High Temp
                                        style: GoogleFonts.nunitoSans(
                                          fontSize: 45,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Text(
                                  currently != null
                                      ? currently.toString()
                                      : "Loading...", //display current Weather Text
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
                          const SizedBox(height: 37),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 10, 5, 0),
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
                                          : "Loading...", //display humidity
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 26.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
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
                                        : 'Loading...', //display wind speed text
                                    style: const TextStyle(
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
        ],
      ),
    );
  }
}
