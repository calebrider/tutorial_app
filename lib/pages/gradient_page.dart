import 'package:flutter/material.dart';
import 'package:tutorial_app/constants/colors.dart';


class GradientPage extends StatefulWidget {
  @override
  _GradientPageState createState() => _GradientPageState();
}

class _GradientPageState extends State<GradientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: Colors.white), //change your color here
        title: Text('Gradient Page',
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
      body: Container(
        //color: Colors.white,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.8],
            colors: [
              blueColor,
              pinkColor,
            ],
          ),
        ),
      ),
    );
  }
}