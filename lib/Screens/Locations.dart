// ignore_for_file: deprecated_member_use
import 'dart:developer';
import 'Weather_app.dart';
import 'package:provider/provider.dart';
import 'package:flutterweatherui/Screens/Weather_app.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Locations extends StatefulWidget {
  @override
  AllLocations createState() => AllLocations();
}

class AllLocations extends State<Locations> {
  String TUnit = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: EdgeInsets.fromLTRB(380, 40, 0, 40),
          child: Text(
            "Locations",
            style: GoogleFonts.nunitoSans(fontSize: 50),
          ),
        ),
        //backgroundColor: Colors.white,
        bottom: PreferredSize(
            child: Container(
              color: Colors.black,
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(1)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("England: Chorley",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MainWeatherApp(
                    currentcity: "Chorley",
                    TUnit: TUnit,
                  ),
                ));
              },
            ),
            ListTile(
              title: Text("England: Preston",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Preston", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("England: London",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "London", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Scotland: Edinburgh",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Edinburgh", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Wales: Cardiff",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Cardiff", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("ROI: Dublin",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Dublin", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("America: Boston",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Boston", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("America: New York",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "New York", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("America: Washington DC",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MainWeatherApp(
                      currentcity: "Washington DC", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("France: Paris",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Paris", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Spain: Barcelona",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Barcelona", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Spain: Madrid",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Madrid", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Germany: Berlin",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Berlin", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Germany: Munich",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Munich", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Sweden: Stockholm",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Stockholm", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Ukraine: Kyiv",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Kyiv", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Russia: Moscow",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Moscow", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Australia: Melbourne",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Melbourne", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("South Korea: Seoul",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Seoul", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Singapore",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Singapore", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("China: Beijing",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Beijing", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Qatar: Bahrain",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Bahrain", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Saudi Arabia: Jeddah",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Jeddah", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Italy: Imola",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Imola", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title:
                  Text("Monaco", style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Monaco", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Azerbaijan: Baku",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Baku", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Canada: Montreal",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Montreal", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Belgium: Stavelot",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Stavelot", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Brazil: Sao Paulo",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Sao Paulo", TUnit: "Metric"),
                ));
              },
            ),
            ListTile(
              title: Text("Austria: Spielberg",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Spielberg", TUnit: "Metric"),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
