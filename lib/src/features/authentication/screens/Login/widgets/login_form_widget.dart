import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authentication/screens/forget_password/forget_password_options/forget_password_modal_bottom_sheet.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Form(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_outline_outlined),
                    labelText: tEmail,
                    hintText: tEmail,
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: tFormHeight,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint),
                    labelText: tPassword,
                    hintText: tPassword,
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.remove_red_eye_sharp))),
              ),
              const SizedBox(
                height: tFormHeight - 20,
              ),
              //Forget Password Button
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      ForgetPasswordScreen.buildShowModalBottomSheet(context);
                    },
                    child: Text(tForgetPassword),
                  )),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text(tLogin.toUpperCase()))),
            ],
          ),
        ),
      ),
    ]);
  }

 
}

