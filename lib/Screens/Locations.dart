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
  String value = ''; //create the variable that is used to dynamically
  @override //change the location value on the home page.
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Text("Search"),
            ),
            ListTile(
              title:
                  Text("Chorley", style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MainWeatherApp(currentcity: "Chorley"),
                ));
              },
            ),
            ListTile(
              title:
                  Text("Preston", style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MainWeatherApp(currentcity: "Preston"),
                ));
              },
            ),
            ListTile(
              title:
                  Text("London", style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MainWeatherApp(currentcity: "London"),
                ));
              },
            ),
            ListTile(
              title: Text("Edinburgh",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Edinburgh"),
                ));
              },
            ),
            ListTile(
              title:
                  Text("Cardiff", style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MainWeatherApp(currentcity: "Cardiff"),
                ));
              },
            ),
            ListTile(
              title:
                  Text("Dublin", style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MainWeatherApp(currentcity: "Dublin"),
                ));
              },
            ),
            ListTile(
              title:
                  Text("Boston", style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MainWeatherApp(currentcity: "Boston"),
                ));
              },
            ),
            ListTile(
              title:
                  Text("New York", style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MainWeatherApp(currentcity: "New York"),
                ));
              },
            ),
            ListTile(
              title: Text("Washington DC",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Washington DC"),
                ));
              },
            ),
            ListTile(
              title: Text("Paris", style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MainWeatherApp(currentcity: "Paris"),
                ));
              },
            ),
            ListTile(
              title: Text("Barcelona",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Barcelona"),
                ));
              },
            ),
            ListTile(
              title:
                  Text("Madrid", style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MainWeatherApp(currentcity: "Madrid"),
                ));
              },
            ),
            ListTile(
              title:
                  Text("Berlin", style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MainWeatherApp(currentcity: "Berlin"),
                ));
              },
            ),
            ListTile(
              title:
                  Text("Munich", style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MainWeatherApp(currentcity: "Munich"),
                ));
              },
            ),
            ListTile(
              title: Text("Stockholm",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Stockholm"),
                ));
              },
            ),
            ListTile(
              title: Text("Kyiv", style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MainWeatherApp(currentcity: "Kyiv"),
                ));
              },
            ),
            ListTile(
              title:
                  Text("Moscow", style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MainWeatherApp(currentcity: "Moscow"),
                ));
              },
            ),
            ListTile(
              title: Text("Melbourne",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Melbourne"),
                ));
              },
            ),
            ListTile(
              title: Text("Seoul", style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MainWeatherApp(currentcity: "Seoul"),
                ));
              },
            ),
            ListTile(
              title: Text("Singapore",
                  style: GoogleFonts.nunitoSans(fontSize: 30)),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.add_circle_outline_outlined, size: 30)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MainWeatherApp(currentcity: "Singapore"),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
