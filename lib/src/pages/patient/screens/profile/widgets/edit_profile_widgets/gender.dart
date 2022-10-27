import 'package:flutter/material.dart';

class GenderEditProfile extends StatefulWidget {
  final Function(String value) onChanged;
  const GenderEditProfile({Key? key, required this.onChanged})
      : super(key: key);

  @override
  State<GenderEditProfile> createState() => _GenderEditProfileState();
}

class _GenderEditProfileState extends State<GenderEditProfile> {
  String? dropdownvalue;
  var items = [
    'Male',
    'Female',
    'Others',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: InputDecorator(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          isEmpty: dropdownvalue == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: dropdownvalue,
              hint: const Text('Gender'),
              isDense: true,
              onChanged: (value) {
                widget.onChanged(value ?? '');
                dropdownvalue = value!;
              },
              items: items.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          )),
    );
  }
}
