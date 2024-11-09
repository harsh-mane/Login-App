import 'package:flutter/material.dart';

class DashboardCategories {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardCategories(this.title, this.heading, this.subHeading, this.onPress);

  static List<DashboardCategories> list = [
    DashboardCategories("JS", "Java Script", "10 Lessons", null),
     DashboardCategories("F", "Flutter", "11 Lessons", null),
      DashboardCategories("H", "HTML", "8 Lessons", null),
       DashboardCategories("K", "Kotlin", "20 Lessons", null),
        DashboardCategories("P", "Python", "100 Lessons", null),
  ];
}
