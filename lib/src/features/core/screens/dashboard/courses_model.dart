import 'package:flutter/material.dart';
class  DashboardTopCoursesModel{
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardTopCoursesModel(this.title, this.heading, this.subHeading, this.onPress);

  static List<DashboardTopCoursesModel> list = [
    DashboardTopCoursesModel("JS", "Java Script", "10 Lessons", null),
    DashboardTopCoursesModel("F", "Flutter", "11 Lessons", null),
      DashboardTopCoursesModel("H", "HTML", "8 Lessons", null),
       DashboardTopCoursesModel("K", "Kotlin", "20 Lessons", null),
        DashboardTopCoursesModel("P", "Python", "100 Lessons", null),
  ];
}
