import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_flutter_app/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:login_flutter_app/src/features/authentication/models/model_on_boarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;
  final controller = LiquidController();
  final int currentPage = 0;

  void onPageChangedCallback(int activePageIndex) {
    // Handle page changes if necessary
  }

  @override
  Widget build(BuildContext context) {
 
final obcontroller = OnBoardingController();
    
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obcontroller.pages,
            liquidController: obcontroller.Controller,
            onPageChangeCallback: obcontroller.OnPageChangedCallback,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () =>obcontroller.animateToNextSlide(),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Color(0xff272727), shape: BoxShape.circle),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                  onPressed: () =>obcontroller.skip() ,
                  child: const Text(
                    "Skip",
                    style: TextStyle(color: Colors.grey),
                  ))),
          Obx(
           ()=> Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
                  activeIndex: obcontroller.currentPage.value,
                  effect: WormEffect(activeDotColor: Color(0xff272727)),
                  count: 3,
                )),
          )
        ],
      ),
    );
  }
}
