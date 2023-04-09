import 'package:flutter/material.dart';

ListView myBuildListView(List<Map<String, dynamic>> tips) {
  return ListView.builder(
    itemCount: tips.length,
    itemBuilder: (context, index) {
      final tip = tips[index];
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          for (final game in tip.values)
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 8,
              ),
              child: Card(
                child: ListTile(
                  // leading: CircleAvatar(
                  //   child: Text(game['team1'][0]),
                  // ),
                  title: Text(
                    '${game['team1']} vs ${game['team2']}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text.rich(
                    TextSpan(
                      text: 'Tip: ',
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '${game['betting_tips'].values.first['odds']}',
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        const TextSpan(
                          text: '  Result: ',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '${game['score_fulltime']}',
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    style: const TextStyle(fontSize: 16),
                  ),
                  trailing: _buildResult(game['score_fulltime'],
                      game['betting_tips'].values.first['odds'],
                      game['betting_tips'].values.first['odds']),
                ),
              ),
            ),

        ],
      );
    },
  );
}

Widget _buildResult(String scoreFulltime, String oddString,
    String bettingTipsKey) {
  if (scoreFulltime.isEmpty) {
    return const Text(
      'Pending',
      style: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  bool won = scoreFulltime == oddString;
  String resultText = won ? 'Won' : 'Lost';
  Color resultColor = won ? Colors.green : Colors.red;
  return Container(
    decoration: BoxDecoration(
      color: resultColor,
      borderRadius: BorderRadius.circular(4),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    child: Text(
      resultText,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
