import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:login_flutter_app/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tForgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              tForgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: 30.0,
            ),
            ForgetPasswordBTNWidget(
              onTap: () {
                Navigator.pop(context);
                Get.to(() => ForgetPasswordMail());
              },
              btnIcon: Icons.mail_outline_outlined,
              title: tEmail,
              subTitle: tResetViaEmail,
            ),
            SizedBox(
              height: 20.0,
            ),
            ForgetPasswordBTNWidget(
              onTap: () {},
              btnIcon: Icons.mobile_friendly_outlined,
              title: tPhoneNo,
              subTitle: tResetViaPhone,
            ),
          ],
        ),
      ),
    );
  }
}
