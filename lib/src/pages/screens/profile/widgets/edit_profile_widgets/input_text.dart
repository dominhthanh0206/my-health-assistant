import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/styles/colors.dart';

class InputText extends StatelessWidget {
  const InputText({
    Key? key,
    required this.hint,
  }) : super(key: key);
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 48,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border.all(color: MyColors.greyText),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
                hintStyle: const TextStyle(
                    color: MyColors.greyText,
                    fontSize: 15,
                    fontWeight: FontWeight.w400)),
          ),
        ),
      ),
    );
  }
}
