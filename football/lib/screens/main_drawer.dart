import 'package:flutter/material.dart';
import 'package:http/http.dart';


class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color:Colors.black,
                  child: Column(
            
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                color: Colors.black,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        
                        width:100,
                        height: 100, 
                        margin:EdgeInsets.only(top: 50, bottom:10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage('assets/avatar.jpg'),
                          fit: BoxFit.fill,
                          ),
                        ),  
                      ),
                      Text('FootBall Application',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.black,
                            child: ListTile(
                  leading:Icon(Icons.person, color:Colors.white),
                  title: Text('Fotso Dimitri Dylan', 
                  style: TextStyle(
                    fontSize:13,
                    color:Colors.white,
                  ),
                  ),
                ),
              ), 
              
               Container(
                 
                 color: Colors.black,
                              child: ListTile(
                  leading:Icon(Icons.email, color:Colors.white),
                  title: Text('fotsodimitri96@gmail.com', 
                  style: TextStyle(
                    fontSize:13,
                    color: Colors.white
                  ),
                  ),
              ),
               ),
              Container(
                color:Colors.black,
                            child: ListTile(
                  leading:Icon(Icons.info, color:Colors.white),
                  title: Text('About us', 
                  style: TextStyle(
                    fontSize:13,
                    color:Colors.white
                  ),
                  ),
                ),
              ),
              
              Container(
                color:Colors.black,
                            child: ListTile(
                  leading:Icon(Icons.settings, color:Colors.white),
                  title: Text('Setting', 
                  style: TextStyle(
                    fontSize:13,
                    color:Colors.white
                  ),
                  ),
                ),
              ),
              
              Container(
                color:Colors.black,
                            child: ListTile(
                  leading:Icon(Icons.share, color:Colors.white),
                  title: Text('Share', 
                  style: TextStyle(
                    fontSize:13,
                    color:Colors.white
                  ),
                  ),
                ),
              ),
              Container(
                color:Colors.black,
                            child: ListTile(
                  leading:Icon(Icons.verified, color:Colors.white),
                  title: Text('Version 1.0.0', 
                  style: TextStyle(
                    fontSize:13,
                    color:Colors.white
                  ),
                  ),
                ),
              ),
              
            ],
            
          ),
        ),
        
    );
  }
}

