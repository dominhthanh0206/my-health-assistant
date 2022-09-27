import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:my_health_assistant/src/models/profile_model/security_model.dart';
import 'package:my_health_assistant/src/widgets/custom_appbar/custom_appbar.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Security'),
      body: Column(children: [
        SizedBox(
          height: 150,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.separated(
              itemCount: listSecurity.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      listSecurity[index].title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    FlutterSwitch(
                        padding: 1,
                        width: 35.0,
                        height: 17.0,
                        toggleSize: 16.5,
                        activeColor: Colors.blue.shade600,
                        value: listSecurity[index].status,
                        onToggle: (val) {
                          setState(() {
                            listSecurity[index].status = val;
                          });
                        }),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 25),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Google Authenticator',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              )
            ],
          ),
        ),
        const SizedBox(height: 15),
        const ButtonSecurity(title: 'Change Pin'),
        const ButtonSecurity(title: 'Change Password'),
      ]),
    );
  }
}

class ButtonSecurity extends StatelessWidget {
  const ButtonSecurity({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
      child: SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              elevation: 0.0,
              primary: const Color.fromARGB(255, 185, 218, 246),
              padding: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100))),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 16, color: Color.fromARGB(255, 0, 124, 248)),
          ),
        ),
      ),
    );
  }
}
