import 'package:bet_corner/pages/tips/correct_scores.dart';
import 'package:bet_corner/pages/tips/draw.dart';
import 'package:bet_corner/pages/tips/goal_goal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DashboardCategoriesModel {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback onPress;

  DashboardCategoriesModel(this.title, this.heading, this.subHeading, this.onPress);

  static List<DashboardCategoriesModel> list = [
    DashboardCategoriesModel("VIP", "Correct Scores", "Today's Pick", () {
      Get.to(() => const CorrectScores());
    }),
    DashboardCategoriesModel("VIP", "Draw", "Today's Pick", () {
      Get.to(() => const DrawTips());
    }),
    DashboardCategoriesModel("VIP", "GG", "Today's Pick", () {
      Get.to(() => const GoalGoal());
    }),
  ];

}