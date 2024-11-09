import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/appbar.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/banners.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/search.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/top_courses.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    //variables
    final TextTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: DashboardAppBar(),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(tDashboardPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading
            Text(
              tDashboardTitle,
              style: TextTheme.bodyMedium,
            ),
            Text(
              tDashboardHeading,
              style: TextTheme.headlineMedium,
            ),
            const SizedBox(
              height: tDashboardPadding,
            ),

            //Searchbox
            SearchBox(textTheme: TextTheme),
            SizedBox(
              height: tDashboardPadding,
            ),
            // Categories
            Categories(textTheme: TextTheme),
            const SizedBox(
              height: tDashboardPadding,
            ),

            //banners
            Banners(textTheme: TextTheme),
            const SizedBox(
              height: tDashboardPadding,
            ),

            //Top Course
            Text(
              tDashboardTopCourses,
              style: TextTheme.headlineSmall?.apply(fontSizeFactor: 1.2),
            ),
            TopCourses(textTheme: TextTheme)
          ],
        ),
      )),
    );
  }
}
