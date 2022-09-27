import 'package:flutter/material.dart';

class InputEmail extends StatelessWidget {
  const InputEmail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 48,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border.all(color: const Color.fromRGBO(209, 210, 212, 1)),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: const [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(209, 210, 212, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.email_outlined),
              )
            ],
          ),
        ),
      ),
    );
  }
}
