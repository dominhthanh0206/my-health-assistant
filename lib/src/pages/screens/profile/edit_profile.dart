import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:intl/intl.dart';
import 'package:my_health_assistant/src/styles/colors.dart';
import 'package:my_health_assistant/src/widgets/buttons/my_elevated_button.dart';
import 'package:my_health_assistant/src/widgets/custom_appbar/custom_appbar.dart';

import 'widgets/edit_profile_widgets/input_email.dart';
import 'widgets/edit_profile_widgets/input_number_range.dart';
import 'widgets/edit_profile_widgets/input_text.dart';
import 'widgets/edit_profile_widgets/select_item.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Edit Profile',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                const InputText(hint: 'Enter the full name you want to update'),
                const InputText(hint: 'First name'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: MyColors.greyText),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Date of birth',
                                  hintStyle: TextStyle(
                                      color: MyColors.greyText,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)),
                              controller: _date,
                              onTap: () async {
                                DateTime? pickeDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2101));
                                if (pickeDate != null) {
                                  setState(() {
                                    _date.text = DateFormat('dd/MM/yyyy')
                                        .format(pickeDate);
                                  });
                                }
                              },
                            ),
                          ),
                          SvgPicture.asset(
                              'assets/images/profile/calendar-days.svg')
                        ],
                      ),
                    ),
                  ),
                ),
                const InputEmail(),
                const DropNation(),
                const InputPhoneNumber(),
                const DropGender(),
              ]),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: MyElevatedButton(
                  customFunction: () {},
                  text: 'Update',
                  buttonColor: MyColors.mainColor,
                  fontSize: 13,
                  textColor: MyColors.whiteText,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
