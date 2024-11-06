import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/features/authentication/models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
 const OnBoardingPageWidget({super.key, required this.model});



  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
//get the height of the screen
final double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(model.image),
           
          ),
          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                model.subTitle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 80.0,
              )
            ],
          ),
          Text(model.counterText)
        ],
      ),
    );
  }
}
