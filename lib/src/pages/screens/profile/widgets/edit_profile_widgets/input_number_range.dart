import 'package:flutter/material.dart';

class InputPhoneNumber extends StatelessWidget {
  const InputPhoneNumber({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(209, 210, 212, 1)),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Row(
          children: const [
            Text("(+84)"),
            SizedBox(width: 5),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: VerticalDivider(color: Colors.grey,),
            ),
            SizedBox(width: 5),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: 12.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Phone Number",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(209, 210, 212, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
