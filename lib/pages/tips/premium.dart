import 'package:bet_corner/pages/tips/tips_widget/premium_widgets/premium_tips.dart';
import 'package:bet_corner/pages/tips/tips_widget/tips_component/tips_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class PremiumTips extends StatefulWidget {
  const PremiumTips({Key? key}) : super(key: key);

  @override
  State<PremiumTips> createState() => _PremiumTipsState();
}

class _PremiumTipsState extends State<PremiumTips> {
  late DatabaseReference tipsRef;

  @override
  void initState() {
    super.initState();
    tipsRef = FirebaseDatabase.instance.ref().child('tips');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: tipsAppBar(
          title: const Text(
            'Premium Odds',
            style: TextStyle(fontSize: 20),
          ),
        ),
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

            return myBuildListView(tips);
          },
        ),
      ),
    );
  }
}