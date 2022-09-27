import 'package:flutter/material.dart';

class ButtonInLogoutBottomSheet extends StatelessWidget {
  const ButtonInLogoutBottomSheet({
    Key? key,
    required this.primary,
    required this.textColor,
    required this.text,
  }) : super(key: key);
  final Color primary;
  final Color textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal:8.0, vertical: 16),
        child: SizedBox(
          height: 50,
          width: 160,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                elevation: 0.0,
                primary: primary,
                padding: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100))),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: textColor,
              ),
            ),
          ),
        ));
  }
}