import 'package:flutter/material.dart';

import 'package:my_health_assistant/src/pages/patient/screens/profile/widgets/edit_profile_widgets/gender.dart';
import 'package:my_health_assistant/src/pages/patient/screens/profile/widgets/edit_profile_widgets/input_date.dart';
import 'package:my_health_assistant/src/styles/colors.dart';
import 'package:my_health_assistant/src/widgets/buttons/my_elevated_button.dart';
import 'package:my_health_assistant/src/widgets/custom_appbar/custom_appbar.dart';

import 'widgets/edit_profile_widgets/textfield_custom.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _dateInput = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nicknameController = TextEditingController();

  final TextEditingController _addressController = TextEditingController();
  String? textGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Edit Profile',
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Column(
            children: [
              TextFieldCustom(
                controller: _nameController,
                hint: 'Full name',
              ),
              TextFieldCustom(
                controller: _nicknameController,
                hint: 'Nick name',
              ),
              InputDate(dateInput: _dateInput),
              GenderEditProfile(
                onChanged: (value) => _getGender(value),
              ),
              TextFieldCustom(
                surfixIcon: const Icon(Icons.phone_android),
                hint: 'Phone number',
                keyboardType: TextInputType.number,
                controller: _phoneNumberController,
              ),
              TextFieldCustom(
                hint: 'Address',
                controller: _addressController,
                surfixIcon: const Icon(Icons.location_on_sharp),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Can not be empty';
                  } else {
                    return null;
                  }
                },
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 4.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: MyElevatedButton(
                customFunction: () {},
                text: 'Update',
                buttonColor: MyColors.mainColor,
                fontSize: 16,
                textColor: MyColors.whiteText,
              ),
            ),
          )
        ]),
      ),
    );
  }

  _getGender(value) {
    if (value != null) {
      setState(() {
        textGender = value;
      });
    }
  }
}
