import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_app/constants/colors.dart';


class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  Color _color = blueColor;
  double _width = 0;
  bool isSelected = false;


  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((value) => setState(() {
      _color = pinkColor;
      _width = 300;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: Colors.white), //change your color here
        title: Text('Animated Containers',
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
      body: Container(padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Center(
            child: FractionallySizedBox(widthFactor: 0.85,
              child: Column(
                children: [
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    color: _color,
                    child: Center(
                      child: Text(
                        'Blue to Pink',
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                        ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  AnimatedContainer(
                    height: 40,
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    width: _width,
                    child: ElevatedButton(onPressed: () {
                      setState(() {
                      isSelected = ! isSelected;
                      });
                      },
                        child: Text('Click Me', style: TextStyle(color: Colors.white),)
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  AnimatedDefaultTextStyle(
                    style: isSelected
                        ? TextStyle(
                        fontSize: 50,
                        color: blueColor,
                        fontWeight: FontWeight.bold)
                        : TextStyle(
                        fontSize: 24.0,
                        color: pinkColor,
                        fontWeight: FontWeight.w300),
                    duration: const Duration(milliseconds: 200),
                    child: Text("Animate me!"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}