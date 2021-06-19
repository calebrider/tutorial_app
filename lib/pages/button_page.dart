import 'package:flutter/material.dart';
import 'package:tutorial_app/constants/colors.dart';


class ButtonPage extends StatefulWidget {
  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: Colors.white), //change your color here
        title: Text('Button Page',
          style: TextStyle(
              fontFamily: 'Quicksand',
              //fontWeight: FontWeight.bold,
              fontSize: 24.0,
              letterSpacing: 2.0,
              color: Colors.white
          ),
        ),
        centerTitle: true,
        backgroundColor: blueColor,
      ),
      body: Container(padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextButton(
                onPressed: () {}, child: Text('TextButton')
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            TextButton(
              onPressed: () {}, child: Text(
              'Colored TextButton',
              style: TextStyle(
                color: pinkColor,
              ),
            ),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            ElevatedButton(
                onPressed: () {}, child: Text('ElevatedButton')
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            ElevatedButton(onPressed: () {}, child: Text(
              'Colored ElevatedButton',
              style: TextStyle(color: Colors.white),
            ),
              style: ElevatedButton.styleFrom(
                primary: pinkColor,
              ),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            OutlinedButton(onPressed: () {}, child: Text('OutlinedButton')),
            Padding(padding: EdgeInsets.all(10.0)),
            OutlinedButton(
                onPressed: () {}, child: Text('Colored OutlinedButton'),
              style: OutlinedButton.styleFrom(
                primary: pinkColor
              ),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            OutlinedButton(
              onPressed: () {}, child: Text('Button Shape'),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: blueColor,
                shape: StadiumBorder(),
                side: BorderSide(width: 2.0, color: pinkColor)
              ),
            ),
          ],
        ),
      ),
    );
  }
}