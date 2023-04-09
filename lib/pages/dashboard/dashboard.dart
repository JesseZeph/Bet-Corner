import 'package:bet_corner/pages/dashboard/widgets/appbar.dart';
import 'package:bet_corner/pages/dashboard/widgets/banners.dart';
import 'package:bet_corner/pages/dashboard/widgets/categories.dart';
import 'package:bet_corner/pages/dashboard/widgets/search.dart';
import 'package:bet_corner/pages/dashboard/widgets/top_odds.dart';
import 'package:bet_corner/pages/tips/premium.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/image_strings.dart';
import '../../constants/sizes.dart';
import '../../constants/text_strings.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(jDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, ${user.email!}",
                style: txtTheme.bodyMedium,
              ),
              Text(
                jDashboardHeading,
                style: txtTheme.displayMedium,
              ),
              const SizedBox(
                height: jDashboardPadding,
              ),
              // AppSearchBar(txtTheme: txtTheme),
              const SizedBox(
                height: jDashboardPadding,
              ),
              const SizedBox(height: 30),

              DashboardCategory(txtTheme: txtTheme),
              const SizedBox(
                height: jDashboardPadding,
              ),
              const SizedBox(height: 30),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TipsBanner(txtTheme: txtTheme),
                  ),
                  const SizedBox(
                    width: jDashboardCardPadding,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: jCardBgColor),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Flexible(
                                      child: Image(
                                          image: AssetImage(jBookmarkIcon))),
                                  Flexible(
                                      child: Image(
                                          image: AssetImage(jBannerImage2))),
                                ],
                              ),
                              Text(jDashboardBannerTitle2,
                                  style: txtTheme.headlineMedium,
                                  overflow: TextOverflow.ellipsis),
                              Text(jDashboardBannerSubTitle,
                                  style: txtTheme.bodyMedium,
                                  overflow: TextOverflow.ellipsis),
                            ],

                          ),

                        ),
                        SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PremiumTips()),
                                  );
                                },
                                child: const Text(jDashboardButton))),
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 30),
              const SizedBox(
                height: jDashboardPadding,
              ),
              Text(
                jDashboardTopCourses,
                style: txtTheme.headlineMedium?.apply(fontSizeFactor: 1.2),
              ),
              DailyOdds(txtTheme: txtTheme)
            ],
          ),
        ),
      ),
    );
  }
}
