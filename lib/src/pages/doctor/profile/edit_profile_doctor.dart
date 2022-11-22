import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/pages/doctor/profile/component/custom_texfield.dart';
import 'package:my_health_assistant/src/pages/doctor/profile/component/gender.dart';
import 'package:my_health_assistant/src/pages/doctor/profile/component/input_date_of_birth.dart';
import 'package:my_health_assistant/src/widgets/custom_appbar/custom_appbar.dart';

class EditProfileDoctor extends StatefulWidget {
  const EditProfileDoctor({Key? key}) : super(key: key);

  @override
  State<EditProfileDoctor> createState() => _EditProfileDoctorState();
}

class _EditProfileDoctorState extends State<EditProfileDoctor> {
  final TextEditingController _dateInput = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _datetimeController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _datetimeController.dispose();
    _dateInput.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Edit Your Profile'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextFiled(
                      hint: 'Full name',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Can not be empty';
                        } else {
                          return null;
                        }
                      },
                    ),
                    InputAge(dateInput: _dateInput),
                    const Gender(),
                    CustomTextFiled(
                      hint: 'Phone Number',
                      surfixIcon: const Icon(Icons.phone_android_rounded),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your phone number";
                        } else if (value.length > 11 || value[0] != '0') {
                          return "Please enter valid phone number";
                        } else {
                          return null;
                        }
                      },
                    ),
                    CustomTextFiled(
                      hint: 'Address',
                      surfixIcon: const Icon(Icons.location_on_sharp),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Can not be empty';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ],
                )),
            SizedBox(height: MediaQuery.of(context).size.height / 3.5),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
                      log('update');
                    }
                  },
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  child: const Text(
                    'Update',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
