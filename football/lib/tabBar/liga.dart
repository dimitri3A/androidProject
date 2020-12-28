// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);
import 'package:flutter/material.dart';


import 'dart:convert';

import 'package:http/http.dart';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
    Welcome({
        this.countryName,
        this.leagueId,
        this.leagueName,
        this.teamId,
        this.teamName,
        this.overallPromotion,
        this.overallLeaguePosition,
        this.overallLeaguePayed,
        this.overallLeagueW,
        this.overallLeagueD,
        this.overallLeagueL,
        this.overallLeagueGf,
        this.overallLeagueGa,
        this.overallLeaguePts,
        this.homeLeaguePosition,
        this.homePromotion,
        this.homeLeaguePayed,
        this.homeLeagueW,
        this.homeLeagueD,
        this.homeLeagueL,
        this.homeLeagueGf,
        this.homeLeagueGa,
        this.homeLeaguePts,
        this.awayLeaguePosition,
        this.awayPromotion,
        this.awayLeaguePayed,
        this.awayLeagueW,
        this.awayLeagueD,
        this.awayLeagueL,
        this.awayLeagueGf,
        this.awayLeagueGa,
        this.awayLeaguePts,
        this.leagueRound,
        this.teamBadge,
    });

    CountryName countryName;
    String leagueId;
    LeagueName leagueName;
    String teamId;
    String teamName;
    String overallPromotion;
    String overallLeaguePosition;
    String overallLeaguePayed;
    String overallLeagueW;
    String overallLeagueD;
    String overallLeagueL;
    String overallLeagueGf;
    String overallLeagueGa;
    String overallLeaguePts;
    String homeLeaguePosition;
    String homePromotion;
    String homeLeaguePayed;
    String homeLeagueW;
    String homeLeagueD;
    String homeLeagueL;
    String homeLeagueGf;
    String homeLeagueGa;
    String homeLeaguePts;
    String awayLeaguePosition;
    String awayPromotion;
    String awayLeaguePayed;
    String awayLeagueW;
    String awayLeagueD;
    String awayLeagueL;
    String awayLeagueGf;
    String awayLeagueGa;
    String awayLeaguePts;
    String leagueRound;
    String teamBadge;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        countryName: countryNameValues.map[json["country_name"]],
        leagueId: json["league_id"],
        leagueName: leagueNameValues.map[json["league_name"]],
        teamId: json["team_id"],
        teamName: json["team_name"],
        overallPromotion: json["overall_promotion"],
        overallLeaguePosition: json["overall_league_position"],
        overallLeaguePayed: json["overall_league_payed"],
        overallLeagueW: json["overall_league_W"],
        overallLeagueD: json["overall_league_D"],
        overallLeagueL: json["overall_league_L"],
        overallLeagueGf: json["overall_league_GF"],
        overallLeagueGa: json["overall_league_GA"],
        overallLeaguePts: json["overall_league_PTS"],
        homeLeaguePosition: json["home_league_position"],
        homePromotion: json["home_promotion"],
        homeLeaguePayed: json["home_league_payed"],
        homeLeagueW: json["home_league_W"],
        homeLeagueD: json["home_league_D"],
        homeLeagueL: json["home_league_L"],
        homeLeagueGf: json["home_league_GF"],
        homeLeagueGa: json["home_league_GA"],
        homeLeaguePts: json["home_league_PTS"],
        awayLeaguePosition: json["away_league_position"],
        awayPromotion: json["away_promotion"],
        awayLeaguePayed: json["away_league_payed"],
        awayLeagueW: json["away_league_W"],
        awayLeagueD: json["away_league_D"],
        awayLeagueL: json["away_league_L"],
        awayLeagueGf: json["away_league_GF"],
        awayLeagueGa: json["away_league_GA"],
        awayLeaguePts: json["away_league_PTS"],
        leagueRound: json["league_round"],
        teamBadge: json["team_badge"],
    );

    Map<String, dynamic> toJson() => {
        "country_name": countryNameValues.reverse[countryName],
        "league_id": leagueId,
        "league_name": leagueNameValues.reverse[leagueName],
        "team_id": teamId,
        "team_name": teamName,
        "overall_promotion": overallPromotion,
        "overall_league_position": overallLeaguePosition,
        "overall_league_payed": overallLeaguePayed,
        "overall_league_W": overallLeagueW,
        "overall_league_D": overallLeagueD,
        "overall_league_L": overallLeagueL,
        "overall_league_GF": overallLeagueGf,
        "overall_league_GA": overallLeagueGa,
        "overall_league_PTS": overallLeaguePts,
        "home_league_position": homeLeaguePosition,
        "home_promotion": homePromotion,
        "home_league_payed": homeLeaguePayed,
        "home_league_W": homeLeagueW,
        "home_league_D": homeLeagueD,
        "home_league_L": homeLeagueL,
        "home_league_GF": homeLeagueGf,
        "home_league_GA": homeLeagueGa,
        "home_league_PTS": homeLeaguePts,
        "away_league_position": awayLeaguePosition,
        "away_promotion": awayPromotion,
        "away_league_payed": awayLeaguePayed,
        "away_league_W": awayLeagueW,
        "away_league_D": awayLeagueD,
        "away_league_L": awayLeagueL,
        "away_league_GF": awayLeagueGf,
        "away_league_GA": awayLeagueGa,
        "away_league_PTS": awayLeaguePts,
        "league_round": leagueRound,
        "team_badge": teamBadge,
    };
}

enum CountryName { SPAIN }

final countryNameValues = EnumValues({
    "Spain": CountryName.SPAIN
});

enum LeagueName { LA_LIGA }

final leagueNameValues = EnumValues({
    "LaLiga": LeagueName.LA_LIGA
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
class Liga extends StatefulWidget {
  Liga({Key key}) : super(key: key);

  @override
  _LigaState createState() => _LigaState();
}

class _LigaState extends State<Liga> {
   List <Welcome> standingpremierleaguelist = new List();
    @override
  void initState(){
    super.initState();
    _getRequest();
          }
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            leading: Text('#', style: TextStyle(fontSize:20)),
            title:Text('Liga Standing'),
            actions: [Text('pts', style: TextStyle(fontSize:20))],
            elevation:50,
            toolbarHeight: 25,
            
          ),
           body: Container(
             color: Colors.black,
                        child: ListView.builder(
               itemCount: standingpremierleaguelist.length,
               itemBuilder:(context, index){
                 return Card(
                   color: Colors.black,
                   elevation:1,
                   shadowColor: Colors.black,
                   child: InkWell(
                                      child: Row(
                       
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                        Expanded(flex:0, child: Container(child: Text(standingpremierleaguelist[index].overallLeaguePosition, style:TextStyle(fontWeight: FontWeight.bold, color:Colors.white)),)),
                        Expanded(flex:3, child: Container(child: CircleAvatar(backgroundColor: Colors.black, child: Image(image: NetworkImage(standingpremierleaguelist[index].teamBadge))))),                 
                        Expanded(flex:4, child: Container(child: Text(standingpremierleaguelist[index].teamName, style:TextStyle(fontWeight: FontWeight.bold, color:Colors.white),))),
                        Expanded(flex:1, child: Container(child: CircleAvatar(backgroundColor: Colors.blueAccent, child: Text(standingpremierleaguelist[index].overallLeaguePayed)))),
                        Expanded(flex:1, child: Container(child: CircleAvatar(backgroundColor: Colors.green, child: Text(standingpremierleaguelist[index].overallLeagueW)))),                    
                        Expanded(flex:1, child: Container(child: CircleAvatar(backgroundColor: Colors.yellow, child: Text(standingpremierleaguelist[index].overallLeagueD)))),
                        Expanded(flex:1, child: Container(child: CircleAvatar(backgroundColor: Colors.red, child: Text(standingpremierleaguelist[index].overallLeagueL)))),                    
                        Expanded(flex:1, child: Container(child: CircleAvatar(backgroundColor: Colors.white, child: Text(standingpremierleaguelist[index].overallLeaguePts)))),    
                        
                      ],
                 ),
                 onTap: (){
                   Navigator.pushNamed(context, './details.dart', arguments:
                   {'teamName': standingpremierleaguelist[index].teamName,
                   'teamId': standingpremierleaguelist[index].teamName,
                    }
                   );
                 },
                   ),
                 );
                 
               } ,
               
               ),
           ),
        );
      }
    
       Future <List<Welcome>> _getRequest() async {
       String url ="https://apiv2.apifootball.com/?action=get_standings&league_id=468&APIkey=de3c4172009020e36eab8ded73b1145eaa57ddffae33b933cd7cf20e140b5e8a";
       Response response = await get(url);
       var rb = response.body;
       var list = json.decode(rb) as List;
       List<Welcome>listvalues=list.map((e) => Welcome.fromJson(e)).toList();

       setState((){
         standingpremierleaguelist.addAll(listvalues);
       });
     }
}