// ignore_for_file: deprecated_member_use
import 'Weather_app.dart';
import 'package:flutterweatherui/Screens/Weather_app.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Locations extends StatefulWidget {
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
  String value = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
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
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (text) {
              value = text;
            },
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MainWeatherApp(currentcity: value),
              ));
            },
            child: Text("Set"),
          ),
        ],
      ),
      /*ListView.builder(
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
                    "Melbourne",
                    style: GoogleFonts.nunitoSans(fontSize: 35),
                  ),
                  onTap: () {
                    var route = new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new MainWeatherApp(currentcity: string1),
                    );
                  },
                ),
              ),
              /*
              child: Padding(
                padding: EdgeInsets.fromLTRB(30, 8, 0, 8),
                child: ListTile(
                  title: Text(
                    listlocations[index],
                    style: GoogleFonts.nunitoSans(fontSize: 35),
                  ),
                  onTap: () {},
                ),
              ),*/ 
            );
          }),*/
    );
  }
}
