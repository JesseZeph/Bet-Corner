import 'package:flutter/material.dart';

import '../tips_widget.dart';

ListView myListBuilder(List<Map<String, dynamic>> tips) {
  return ListView.builder(
    itemCount: tips.length,
    itemBuilder: (context, index) {
      final tip = tips[index];
      final homeTeamName = tip['team1'];
      final awayTeamName = tip['team2'];
      final scoreFulltime = tip['score_fulltime'];
      final bettingTips = tip['betting_tips'];

      final odds = <String>[];
      bettingTips.forEach((key, value) {
        odds.add(value['odds']);
      });
      final oddsString = odds.join(' / ');

      return MyListTile(
          homeTeamName: homeTeamName,
          awayTeamName: awayTeamName,
          scoreFulltime: scoreFulltime,
          oddsString: oddsString,

      );
    },
  );
}
