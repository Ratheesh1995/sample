import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 70,bottom: 50),
                margin: EdgeInsets.only(left: 10,right: 10),
                child: Image.asset('assets/img1.jpg'),
              ),
              Container(
                height: 100,
                padding: EdgeInsets.only(left: 30, right: 30),
                margin: EdgeInsets.only(left: 10,right: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                    ),
                  ),
                ),
              ),
              Container(
                /*decoration: BoxDecoration(
                    boxShadow:[
                      BoxShadow(
                          spreadRadius: 3,blurRadius: 5,color: Colors.black12)
                      ],
                borderRadius: BorderRadius.circular(30.0)),*/


                height: 100,
                padding: EdgeInsets.only(left: 30, right: 30),
                margin: EdgeInsets.only(left: 10,right: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50),
                child: SizedBox(
                  width: 200,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    color: Colors.green,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
