import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/pages/screens/profile/widgets/logout_widget/button_logout.dart';

class BottomSheetLogout extends StatelessWidget {
  const BottomSheetLogout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
        child: Column(
          children: [
            const Text(
              'Lougout',
              style: TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Divider(thickness: 1),
            ),
            const Text('Are you sure you want to log out?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonInLogoutBottomSheet(
                  text: 'Cancel',
                  primary: const Color.fromARGB(255, 189, 234, 255),
                  textColor: Colors.blue.shade600,
                ),
                ButtonInLogoutBottomSheet(
                  text: 'Logout',
                  primary: Colors.blue.shade600,
                  textColor: const Color.fromARGB(255, 189, 234, 255),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
