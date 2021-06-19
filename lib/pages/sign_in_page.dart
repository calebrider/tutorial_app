import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_app/constants/colors.dart';


class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
double _width = 0;
bool isSelected = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 0)).then((value) => setState(() {
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
        title: Text('Sign In',
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
                  Padding(padding: EdgeInsets.all(10.0)),
                  AnimatedDefaultTextStyle(
                    style: isSelected
                        ? TextStyle(
                        fontSize: 24,
                        color: blueColor)
                        : TextStyle(
                        fontSize: 24,
                        color: Colors.white),
                    duration: const Duration(seconds: 1),
                    child: Text("Welcome"),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn,
                    width: _width,
                    child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide(color: pinkColor, width: 2.0)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: blueColor, width: 2.0)
                            ),
                            labelText: 'Username'
                        ),
                      ),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 600),
                    curve: Curves.fastOutSlowIn,
                    width: _width,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(color: pinkColor, width: 2.0)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: blueColor, width: 2.0)
                          ),
                          labelText: 'Password'
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  TextButton(
                      onPressed: () {}, child: Text(
                      'Forgot Username/Password?',
                    style: TextStyle(color: pinkColor),
                  ),
                  ),
                  TextButton(
                    onPressed: () {}, child: Text(
                    'Sign Up',
                    style: TextStyle(color: pinkColor),
                  ),
                  ),
                  Padding(padding: EdgeInsets.all(20.0)),
                  FractionallySizedBox(widthFactor: 0.75,
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: const StadiumBorder(),
                        gradient: LinearGradient(
                          colors: [blueColor, pinkColor],
                        ),
                      ),
                      child: MaterialButton(
                          shape: const StadiumBorder(),
                          child: Text('Sign In', style: TextStyle(color: Colors.white),),
                          onPressed: () {
                            setState(() {
                              isSelected = true;
                            });
                          }
                      ),
                    ),
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