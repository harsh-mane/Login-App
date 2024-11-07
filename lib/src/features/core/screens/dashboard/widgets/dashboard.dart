import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_string.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    //variables
    final TextTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          tAppName,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: tCardBgColor,
            ),
            child: IconButton(
                onPressed: () {},
                icon: const Image(image: AssetImage(tUserProfileImage))),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(tDashboardPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Container(
              decoration:
                  BoxDecoration(border: Border(left: BorderSide(width: 4))),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tDashboardSearch,
                    style: TextTheme.headlineMedium
                        ?.apply(color: Colors.grey.withOpacity(0.5)),
                  ),
                  Icon(
                    Icons.mic,
                    size: 25,
                  )
                ],
              ),
            ),
            SizedBox(
              height: tDashboardPadding,
            ),
            SizedBox(
              width: 170,
              height: 50,
              child: Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: tDarkColor),
                    child: Center(
                      child: Text(
                        "JS",
                        style:
                            TextTheme.headlineSmall?.apply(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
