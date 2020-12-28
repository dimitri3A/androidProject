// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

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
    OverallPromotion overallPromotion;
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
        overallPromotion: overallPromotionValues.map[json["overall_promotion"]],
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
        "overall_promotion": overallPromotionValues.reverse[overallPromotion],
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

enum CountryName { ENGLAND }

final countryNameValues = EnumValues({
    "England": CountryName.ENGLAND
});

enum LeagueName { PREMIER_LEAGUE }

final leagueNameValues = EnumValues({
    "Premier League": LeagueName.PREMIER_LEAGUE
});

enum OverallPromotion { PROMOTION_CHAMPIONS_LEAGUE_GROUP_STAGE, PROMOTION_EUROPA_LEAGUE_GROUP_STAGE, EMPTY, RELEGATION_CHAMPIONSHIP }

final overallPromotionValues = EnumValues({
    "": OverallPromotion.EMPTY,
    "Promotion - Champions League (Group Stage)": OverallPromotion.PROMOTION_CHAMPIONS_LEAGUE_GROUP_STAGE,
    "Promotion - Europa League (Group Stage)": OverallPromotion.PROMOTION_EUROPA_LEAGUE_GROUP_STAGE,
    "Relegation - Championship": OverallPromotion.RELEGATION_CHAMPIONSHIP
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