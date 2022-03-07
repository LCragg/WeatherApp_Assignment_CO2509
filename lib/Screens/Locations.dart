import 'dart:ui';

import 'package:flutterweatherui/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Locations extends StatefulWidget {
  Locations({Key? key}) : super(key: key);
  @override
  AllLocations createState() => AllLocations();
}

class AllLocations extends State<Locations> {
  final listlocations = [
    'Chorley',
    'Preston',
    'London',
    'Edinburgh',
    'Cardiff',
    'New York',
    'Boston',
    'Dublin',
    'Paris',
    'Barcelona',
    'Madrid',
    'Berlin',
    'Munich',
    'Prague',
    'Singapore',
    'Melbourne',
    'Reykjavik',
    'Beijing',
    'Helsinki',
    'Monaco',
    'Stockholm',
    'Bangkok',
    'Washington D.C.',
    'Kyiv',
    'Moscow',
    'Seoul',
    'Cape Town',
    'Lisbon',
    'Warsaw',
    'Oslo',
    'Tokyo'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.fromLTRB(380, 40, 0, 40),
          child: Text(
            "Locations",
            style: GoogleFonts.nunitoSans(color: Colors.black, fontSize: 50),
          ),
        ),
        backgroundColor: Colors.white,
        bottom: PreferredSize(
            child: Container(
              color: Colors.black,
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(1)),
      ),
      body: ListView.builder(
          itemCount: listlocations.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide()),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(30, 8, 0, 8),
                child: ListTile(
                  title: Text(
                    listlocations[index],
                    style: GoogleFonts.nunitoSans(fontSize: 35),
                  ),
                ),
              ),
            );
          }
          /*(children: const <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: ListTile(
            title: Text(
              "Chorley",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: ListTile(
            title: Text(
              "Preston",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: ListTile(
            title: Text(
              "London",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
      ]),*/
          ),
    );
  }
}
