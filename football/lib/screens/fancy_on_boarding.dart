import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:flutter/material.dart';



class FancyPage extends StatefulWidget {
  FancyPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FancyPageState createState() => new _FancyPageState();
}

class _FancyPageState extends State<FancyPage> {
  //Create a list of PageModel to be set on the onBoarding Screens.
  final pageList = [
    PageModel(
        color: const Color(0xFF010007),
        heroImagePath: 'assets/Sans titre-1.png',
        title: Text('Live Standing',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 34.0,
            )),
        body: Text('Discover the team rankings live ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
        icon: Icon(Icons.navigate_next),
        ),
    PageModel(
        color: const Color(0xFF000000),
        heroImagePath: 'assets/Sans titre-2.png',
        title: Text('Teams Players',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 34.0,
            )),
        body: Text(
            'Access the list of players for each team',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
        icon: Icon(Icons.navigate_next),
        
        ),
       
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Pass pageList and the mainPage route.
      body: FancyOnBoarding(
        doneButtonText: "FINISH",
        skipButtonText: "Skip",
        pageList: pageList,
        onDoneButtonPressed: () =>
            Navigator.of(context).pushReplacementNamed('/home'),
        onSkipButtonPressed: () =>
            Navigator.of(context).pushReplacementNamed('/home'),
      ),
    );
  }
}