import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_health_assistant/src/styles/font_styles.dart';

class AttachCard extends StatelessWidget {
  const AttachCard({
    Key? key,
    required this.color,
    required this.icon,
    required this.title, required this.onPressed,
  }) : super(key: key);
  final Color color;
  final String icon;
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: onPressed,
            child: Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(shape: BoxShape.circle, color: color),
              child: SvgPicture.asset(icon, color: Colors.white, fit: BoxFit.none,),
            ),
          ),
          Text(title, style: MyFontStyles.blackColorH5.copyWith(fontSize: 14),)
        ],
      ),
    );
  }
}
