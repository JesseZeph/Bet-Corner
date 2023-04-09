import 'package:bet_corner/pages/tips/tips_widget/tips_component/my_list_builder.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

import 'tips_widget/tips_component/tips_app_bar.dart';

class CorrectScores extends StatefulWidget {
  const CorrectScores({Key? key}) : super(key: key);

  @override
  State<CorrectScores> createState() => _CorrectScoresState();
}

class _CorrectScoresState extends State<CorrectScores> {
  late DatabaseReference tipsRef;

  @override
  void initState() {
    super.initState();
    tipsRef = FirebaseDatabase.instance.ref().child('tips/correct_score');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: tipsAppBar(title: const Text('Correct Scores', style: TextStyle(fontSize: 20),)),

        body: StreamBuilder<DatabaseEvent>(
          stream: tipsRef.onValue,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final tips = <Map<String, dynamic>>[];
            final DataSnapshot dataSnapshot = snapshot.data!.snapshot;
            final Map data = dataSnapshot.value as Map;

            (data.cast<String?, dynamic>()).forEach((key, value) {
              if ((value as Map).containsValue("")) {
                // Skip entries with empty values
                return;
              }
              tips.add(value.cast());
            });

            return myListBuilder(tips);
          },
        ),
      ),
    );
  }
}
