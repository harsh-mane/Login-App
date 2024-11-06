import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/common_widgets/form/form_header_widget.dart';
import 'package:login_flutter_app/src/constants/image_string.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

class ForgetPasswordMail extends StatelessWidget {
  const ForgetPasswordMail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          children: [
            SizedBox(
              height: tDefaultSize * 4,
            ),
            FormHeaderWidget(
              image: tForgetPasswordImage,
              title: tForgetPassword,
              subTitle: tForgetPasswordSubTitle,
              crossAxisAlignment: CrossAxisAlignment.center,
              heightBetween: 30.0,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: tFormHeight,
            ),
            Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    label: Text(tEmail),
                    hintText: tEmail,
                    prefixIcon: Icon(Icons.mail_outline_rounded),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(width: double.infinity ,child: ElevatedButton(onPressed: () {}, child:Text("NEXT")))
              ],
            ))
          ],
        ),
      ))),
    );
  }
}
