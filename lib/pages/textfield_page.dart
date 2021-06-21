import 'package:flutter/material.dart';
import 'package:tutorial_app/constants/colors.dart';


class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: Colors.white), //change your color here
        title: Text('TextField Page',
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
        child: SingleChildScrollView(
          child: Center(
            child: FractionallySizedBox(widthFactor: 0.85,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Basic TextField'
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Rectangular TextField'
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
                      hintText: 'Rounded TextField'
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: pinkColor, width: 2.0)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blueColor, width: 2.0)
                      ),
                      hintText: 'Outline Border Colors'
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      labelText: 'labelText',
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      labelText: 'prefixIcon',
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'obscureText',
                    ),
                    obscureText: true,
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