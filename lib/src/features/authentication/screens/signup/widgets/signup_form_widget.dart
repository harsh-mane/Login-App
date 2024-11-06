import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: Text(tFullName),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text(tEmail),
                prefixIcon: Icon(Icons.email_rounded),
              ),
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text(tPhoneNo),
                prefixIcon: Icon(Icons.numbers_rounded),
              ),
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text(tPassword),
                prefixIcon: Icon(Icons.fingerprint_rounded),
              ),
              obscureText: true, // Optional: for password field
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Text(tSignUp.toUpperCase())))
          ],
        ),
      ),
    );
  }
}