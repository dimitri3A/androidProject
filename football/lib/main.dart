import 'package:flutter/material.dart';
import 'package:football/screens/fancy_on_boarding.dart';
import './screens/home_screen.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {'/home': (context) => Home()},
      title: 'Materil apple',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: FancyPage(),
    );
    
  }
}

