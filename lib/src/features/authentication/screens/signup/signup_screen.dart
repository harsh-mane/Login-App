import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/common_widgets/form/form_header_widget.dart';
import 'package:login_flutter_app/src/constants/image_string.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle,
                ),
                SignUpFormWidget(),
                Column(
                  children: [
                    Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Image(
                            image: AssetImage(tGoogleLogoImage),
                            width: 20.0,
                          ),
                          label: Text(
                            tSignInWithGoogle,
                          )),
                    ),
                    TextButton(onPressed: () {}, child: Text.rich(TextSpan(children: [
                      TextSpan(text: tAlreadyHaveAnAccount,style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: tLogin.toUpperCase())
                    ])))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
