import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_flutter_app/src/constants/image_string.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
      final Controller = Get.put(FadeInAnimationController());
    Controller.startSplashAnimation(); 
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            TfadeInAnimation(
              durationInMs: 1600,
              animate: TAnimatePosition(topAfter: 0, topBefore: -30, leftBefore: -30, leftAfter: 0),
              child: Image(image: AssetImage(tSplashTopIcon)),
            ),
            TfadeInAnimation(
              durationInMs: 1600,
              animate: TAnimatePosition(topAfter: 0, topBefore: -30, leftBefore: -30, leftAfter: 0),
              child: AnimatedOpacity(
                opacity: 1.0, // Set opacity value
                duration: const Duration(milliseconds: 1600),
                child: Image(image: AssetImage(tSplashTopIcon)),
              ),
            ),
            TfadeInAnimation(
              durationInMs: 2000,
              animate: TAnimatePosition(topBefore: 80, topAfter: 80, leftAfter: tDefaultSize, leftBefore: -80),
              child: AnimatedOpacity(
                opacity: 1.0, // Set opacity value
                duration: const Duration(milliseconds: 1600),
                child: Image(image: AssetImage(tSplashImage)),
              ),
            ),
            TfadeInAnimation(
              durationInMs: 2400,
              animate: TAnimatePosition(bottomBefore: 0, bottomAfter: 100),
              child: AnimatedOpacity(
                opacity: 1.0, // Set opacity value
                duration: const Duration(milliseconds: 1600),
                child: Image(image: AssetImage(tSplashImage)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}       