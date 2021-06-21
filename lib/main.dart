import 'package:flutter/material.dart';
import 'package:tutorial_app/pages/textfield_page.dart';
import 'package:tutorial_app/pages/button_page.dart';
import 'package:tutorial_app/pages/gradient_page.dart';
import 'package:tutorial_app/pages/sign_in_page.dart';
import 'package:tutorial_app/pages/animated_container_page.dart';


import 'package:tutorial_app/constants/colors.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutorial App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: blueMaterialColor,
      ),
      home: MyHomePage(title: 'Tutorial App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.dark,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
              ),
              padding: EdgeInsets.all(5.0),
              child: Image.asset(
                'assets/coding_logo.png',
                scale: 20,
              )
            ),
            TextButton(
              style: TextButton.styleFrom(primary: blueColor),
                onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TextFieldPage()),
              );
            }, child: Text('TextField Page')),
            TextButton(
              style: TextButton.styleFrom(primary: blueColor),
                onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ButtonPage()),
              );
            }, child: Text('Button Page')),
            TextButton(
                style: TextButton.styleFrom(primary: blueColor),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AnimatedContainerPage()),
                  );
                }, child: Text('AnimatedContainer Page')),
            TextButton(
                style: TextButton.styleFrom(primary: blueColor),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GradientPage()),
                  );
                }, child: Text('Gradient Page')),
            TextButton(
                style: TextButton.styleFrom(primary: blueColor),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInPage()),
                  );
                }, child: Text('Sign In Page')),
          ],
        ),
      ),
    );
  }
}
