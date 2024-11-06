

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_string.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authentication/models/model_on_boarding.dart';
import 'package:login_flutter_app/src/features/authentication/screens/on_Boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  
  final Controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardingImage1,
        title: tonBoardingTitle1,
        subTitle: tonBoardingSubTitle1,
        counterText: tonBoardingCounter1,
        bgColor: tOnBoardingPage1Color,  height: 10, size: Size.zero,
      ),
    ),
    OnBoardingPageWidget(
        model: OnBoardingModel(
      image: tOnBoardingImage2,
      title: tonBoardingTitle2,
      subTitle: tonBoardingSubTitle2,
      counterText: tonBoardingCounter2,
      bgColor: tOnBoardingPage2Color,height: 10, size: Size.zero,
    )),
    OnBoardingPageWidget(
        model: OnBoardingModel(
      image: tOnBoardingImage3,
      title: tonBoardingTitle3,
      subTitle: tonBoardingSubTitle3,
      counterText: tonBoardingCounter3,
      bgColor: tOnBoardingPage3Color,height: 10, size: Size.zero,
    ))
  ];

  skip() => Controller.jumpToPage(page: 2);
  animateToNextSlide() {
    int nextPage = Controller.currentPage + 1;
    Controller.animateToPage(page: nextPage);
  }

  OnPageChangedCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
