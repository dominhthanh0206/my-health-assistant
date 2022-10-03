import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/styles/font_styles.dart';

class MyTrendingContainer extends StatelessWidget {
  const MyTrendingContainer({Key? key, required this.size, required this.text}) : super(key: key);
  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width / 2,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              child: Image.network(
                'https://cdn.thuvienphapluat.vn/uploads/tintuc/2022/01/30/cap-nhat-huong-dan-dieu-tri-covid.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: MyFontStyles.blackColorH3,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}