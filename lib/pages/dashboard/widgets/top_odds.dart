import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../tips/daily_free_odds.dart';

class DailyOdds extends StatelessWidget {
  const DailyOdds({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          SizedBox(
            child: Padding(

              padding: const EdgeInsets.only(right: 10, top: 5),
              child: Container(
                width: 520,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: jCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            child: Text(
                              "Our Daily Free Odds ",
                              style: txtTheme.headlineMedium,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            )),
                        const Flexible(
                            child: Image(
                              image: AssetImage(jTopCourseImage),
                              height: 110,
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  const DailyFreeOdds()),
                          );

                        }, child: const Icon(Icons.navigate_next),),
                        const SizedBox(width: jDashboardCardPadding,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Make Your Selection", style: txtTheme.headlineMedium, overflow: TextOverflow.ellipsis,),
                            Text("Home/Away Win", style: txtTheme.bodyMedium, overflow: TextOverflow.ellipsis,)
                          ],
                        )

                      ],
                    )
                  ],
                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
