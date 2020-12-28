

import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import './main_drawer.dart';


import '../tabBar/serieA.dart';
import '../tabBar/bundesliga.dart';
import '../tabBar/liga.dart';
import '../tabBar/ligue1.dart';
import '../tabBar/premierLeague.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
      return _Home();
  }
}

class _Home extends State<Home> with SingleTickerProviderStateMixin {

  TabController controller;
  
  @override
  void initState(){
    super.initState();
   
        controller = TabController(length: 5, vsync: this);
      }
    
      @override
      void dispose() {
        controller.dispose();
        super.dispose();
      }
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
    
          appBar: AppBar(
            title: Text('FootBall App'),
            centerTitle: true,
            elevation: 10, 
            backgroundColor: Colors.black,
          ),
          drawer: MainDrawer(),
          body: TabBarView(
            children: [
              SerieA(),
              Liga(),
              PremierLeague(),
              Bundesliga(),
              Ligue1(),
          ],
          controller: controller,
          ),
          bottomNavigationBar:ConvexAppBar(
            top:0,
            height: 50,
            elevation: 50,
            curveSize: 00,
            backgroundColor: Colors.black,
            style: TabStyle.titled,
        items: [
          TabItem(icon: Icons.home, title: 'Serie A'),
          TabItem(icon: Icons.home, title: 'La liga'),
          TabItem(icon: Icons.home, title: 'P League'),
          TabItem(icon: Icons.home, title: 'B-Liga'),
          TabItem(icon: Icons.home, title: 'Ligue 1'),
        ],
        
        controller: controller,
      ),
        );
      }
    
     
}