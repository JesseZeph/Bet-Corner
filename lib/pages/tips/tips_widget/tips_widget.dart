import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key? key,
    required this.homeTeamName,
    required this.awayTeamName,
    required this.scoreFulltime,
    required this.oddsString,
  }) : super(key: key);

  final String homeTeamName;
  final String awayTeamName;
  final String scoreFulltime;
  final String oddsString;

  @override
  Widget build(BuildContext context) {
    final predictedScore = oddsString.split(' ')[0];
    final hasWon = scoreFulltime == predictedScore;

    return ListTile(
        leading: CircleAvatar(
          child: Text(homeTeamName[0]),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            '$homeTeamName vs $awayTeamName',
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
          ),
        ),
        subtitle: RichText(
          text: TextSpan(
            text: 'Tip:',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: Colors.blueAccent,
            ),
            children: <TextSpan>[
              TextSpan(
                text: ' $oddsString  ',
                style: const TextStyle(color: Colors.black54),
              ),
              const TextSpan(
                text: '   Result:',
                style: TextStyle(color: Colors.blueAccent),
              ),
              TextSpan(
                text: ' $scoreFulltime',
                style: const TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ),
        trailing: scoreFulltime.isNotEmpty
            ? Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: hasWon ? Colors.green : Colors.red,
                ),
                child: Text(
                  hasWon ? 'Won' : 'Lost',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey,
                ),
                child: const Text(
                  'Pending',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ));
  }
}

// import 'package:flutter/material.dart';
//
// class MyListTile extends StatelessWidget {
//   const MyListTile({
//     Key? key,
//     required this.homeTeamName,
//     required this.awayTeamName,
//     required this.scoreFulltime,
//     required this.oddsString,
//   }) : super(key: key);
//
//   final String homeTeamName;
//   final String awayTeamName;
//   final String scoreFulltime;
//   final String oddsString;
//
//   @override
//   Widget build(BuildContext context) {
//     final predictedScore = oddsString.split(' ')[0];
//     final hasWon = scoreFulltime == predictedScore;
//     final homeTeamScore = homeTeamName.split('x')[0];
//     final awayTeamScore = awayTeamName.split('x')[0];
//     String? trailingText;
//     Color? trailingColor;
//
//     if (homeTeamScore.isNotEmpty && awayTeamScore.isNotEmpty) {
//       if (homeTeamScore == '1' && scoreFulltime == '2') {
//         trailingText = 'Lost';
//         trailingColor = Colors.red;
//       } else if (awayTeamScore == '2' && scoreFulltime == '1') {
//         trailingText = 'Lost';
//         trailingColor = Colors.red;
//       } else if (homeTeamName == 'HomeAwayWin' && int.parse(homeTeamScore) > int.parse(awayTeamScore)) {
//         trailingText = 'Won';
//         trailingColor = Colors.green;
//       }
//     }
//
//     return ListTile(
//       leading: CircleAvatar(
//         child: Text(homeTeamName[0]),
//       ),
//       contentPadding:
//       const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
//       title: Padding(
//         padding: const EdgeInsets.only(bottom: 10.0),
//         child: Text(
//           '$homeTeamName vs $awayTeamName',
//           style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
//         ),
//       ),
//       subtitle: RichText(
//         text: TextSpan(
//           text: 'Tip:',
//           style: const TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.w800,
//             color: Colors.blueAccent,
//           ),
//           children: <TextSpan>[
//             TextSpan(
//               text: ' $oddsString  ',
//               style: const TextStyle(color: Colors.black54),
//             ),
//             const TextSpan(
//               text: '   Result:',
//               style: TextStyle(color: Colors.blueAccent),
//             ),
//             TextSpan(
//               text: ' $scoreFulltime',
//               style: const TextStyle(color: Colors.black54),
//             ),
//           ],
//         ),
//       ),
//       trailing: trailingText != null && trailingColor != null ? Container(
//         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           color: trailingColor,
//         ),
//         child: Text(
//           trailingText,
//           style: const TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ) : null,
//     );
//   }
// }
