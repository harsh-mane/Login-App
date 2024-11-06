import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/image_string.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Image(
                  image:const AssetImage(tWelcomeScreenImage),
                  height: Size.height * 0.2,
                ),
                Text(
                  tLoginTitle,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  tLoginSubTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),]
    );
  }
}
