import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/common_widgets/form/form_header_widget.dart';
import 'package:login_flutter_app/src/constants/image_string.dart';

import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

import 'package:login_flutter_app/src/features/authentication/screens/Login/widgets/login_footer_widget.dart';
import 'package:login_flutter_app/src/features/authentication/screens/Login/widgets/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(image: tWelcomeScreenImage,title: tLoginTitle,subTitle: tLoginSubTitle,),
                LoginFormWidget(),
                LoginFooterWidget(),
                 ],
            
            ),
          
          ),
        ),
      ),
    );
  }
}
