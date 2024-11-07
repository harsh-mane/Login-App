import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_string.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authentication/screens/Login/widgets/login_screen.dart';
import 'package:login_flutter_app/src/features/authentication/screens/signup/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
        backgroundColor: isDarkMode ? tWhiteColor : tPrimaryColor,
        body: Stack(
          children: [
            TfadeInAnimation(
              durationInMs: 1200,
              animate: TAnimatePosition(
                bottomAfter: 0,
                bottomBefore: -100,
                leftBefore: 0,
                leftAfter: 0,
                topAfter: 0,
                topBefore: 0,
                rightAfter: 0,
                rigthBefore: 0,
              ),
              child: Container(
                padding: EdgeInsets.all(tDefaultSize),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage(
                        tWelcomeScreenImage,
                      ),
                      height: height * 0.6,
                    ),
                    Column(
                      children: [
                        Text(
                          tWelcomeTitle,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Text(
                          tWelcomeSubTitle,
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: OutlinedButton(
                                onPressed: () => Get.to(() => LoginScreen()),
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(),
                                  foregroundColor: tSecondaryColor,
                                  side: BorderSide(color: tSecondaryColor),
                                  padding: EdgeInsets.symmetric(
                                      vertical: tButtonHeight),
                                ),
                                child: Text(tLogin.toUpperCase()))),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                            child: ElevatedButton(
                                onPressed: () => Get.to(() => SignupScreen()),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(),
                                  foregroundColor: tWhiteColor,
                                  side: BorderSide(color: tSecondaryColor),
                                  padding: EdgeInsets.symmetric(
                                      vertical: tButtonHeight),
                                ),
                                child: Text(tSignup.toUpperCase())))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
