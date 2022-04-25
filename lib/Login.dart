import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/gestures.dart';
import 'package:founit/SignUp.dart';
import 'package:founit/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FounIT',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'LOGIN'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFBFBFBF),
      appBar: AppBar(
        title: Center(child: Text(title)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                child: SvgPicture.asset('assets/images/Logo.svg'),
              ),
              const Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    cursorColor: Color(0xF66B4C5),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      labelText: "Email Address",
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.lightBlueAccent)),
                    ),
                  )),
              const Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.password),
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                    // decoration: const BoxDecoration(
                    //   gradient: LinearGradient(
                    //     begin: Alignment.bottomCenter,
                    //     end: Alignment.topCenter,
                    //     colors: [Colors.white24,Colors.lightBlueAccent]
                    //   ),
                    // ),
                    child: ElevatedButton(
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.lightBlueAccent),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        )); // Do something
                  },
                )),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: RichText(
                  text: TextSpan(
                      text: "Don't have an account?!",
                      style: const TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Sign Up',
                            style:
                                const TextStyle(color: Colors.lightBlueAccent),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUp(),
                                    ));
                              })
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
