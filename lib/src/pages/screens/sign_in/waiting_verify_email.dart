import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/styles/colors.dart';
import 'package:my_health_assistant/src/styles/font_styles.dart';

class WaitingVerifyScreen extends StatelessWidget {
  const WaitingVerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/sign_in/zyro-image.png'),
            Text(
              'Please Verify Your Email Address',
              style: MyFontStyles.blackColorH1.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: MyColors.mainColor),
            ),
            const SizedBox(height: 15),
            Text(
              'We noctied your email address has not been verified. '
              'By doing so. you will receive important notification and information about your account',
              textAlign: TextAlign.center,
              style: MyFontStyles.blackColorH2.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
