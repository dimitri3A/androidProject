import 'package:flutter/material.dart';
import './liga.dart';



class Details extends StatefulWidget {
  Details({Key key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  Map data = {};
  @override
  Widget build(BuildContext context) {
    data=ModalRoute.of(context).settings.arguments;
    print('bonjour');
    return Scaffold(
       appBar: AppBar(
         title: Text(data['teamName'] ),
       ),
    );
  }
}