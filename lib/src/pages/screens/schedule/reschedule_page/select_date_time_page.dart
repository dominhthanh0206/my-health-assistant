import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/reschedule_page/custom_time_container.dart';
import 'package:my_health_assistant/src/routes.dart';
import 'package:my_health_assistant/src/widgets/buttons/my_elevated_button.dart';
import 'package:my_health_assistant/src/widgets/buttons/my_text_button.dart';
import 'package:my_health_assistant/src/widgets/custom_appbar/custom_appbar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'my_custom_gridview_hours.dart';

class SelectDateTimePage extends StatelessWidget {
  const SelectDateTimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List<String> times = [
    //   '09:00 AM',
    //   '09:30 AM',
    //   '10:00 AM',
    //   '10:30 AM',
    //   '11:00 AM',
    //   '11:30 AM',
    //   '12:00 AM',
    //   '13:30 AM',
    //   '14:00 AM',
    //   '14:30 AM',
    //   '15:00 AM',
    //   '15:30 AM',
    //   '16:00 AM',
    //   '16:30 AM',
    //   '17:00 AM',
    // ];
    Color mainColor = const Color.fromARGB(255, 0, 106, 192);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: CustomAppBar(title: 'Reschedule Appointment'),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Select Date',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    child: SfDateRangePicker(
                      todayHighlightColor: mainColor,
                      selectionColor: mainColor,
                      navigationMode: DateRangePickerNavigationMode.none,
                      backgroundColor: Colors.blue[50],
                      enablePastDates: false,
                      view: DateRangePickerView.month,
                      showNavigationArrow: true,
                    ),
                  ),
                  
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Select Hour',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const MyCustomGridViewHours()
                ],
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: MyElevatedButton(
                    buttonColor: mainColor,
                    customFunction: () =>
                        showMyDialog(context, mainColor, size),
                    fontSize: 16,
                    text: 'Submit',
                    textColor: Colors.white,
                  ),
                ),
              )
              
            ],
          ),
        ));
  }
}

void showMyDialog(BuildContext context, Color mainColor, Size size) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
        title: Text(
          'Reschedule Success',
          textAlign: TextAlign.center,
          style: TextStyle(color: mainColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        content: const Text(
            'Appointment successfully changed. You will receive a notification and the doctor you selected will contact you.',
            style: TextStyle(fontSize: 15)),
        actions: <Widget>[
          Column(
            children: [
              SizedBox(
                  // margin: const EdgeInsets.symmetric(vertical: 20),
                  width: size.width - 40,
                  height: 40,
                  child: MyElevatedButton(
                    buttonColor: mainColor,
                    customFunction: () => Navigator.popUntil(
                        context, ModalRoute.withName(MyRoutes.pageController)),
                    fontSize: 16,
                    text: 'View Appointment',
                    textColor: Colors.white,
                  )),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: size.width - 40,
                  height: 40,
                  child: MyTextButton(
                    buttonColor: mainColor,
                    customFunction: () => Navigator.pop(context),
                    fontSize: 16,
                    text: 'Cancel',
                    textColor: mainColor,
                  )),
            ],
          )
        ],
      ),
    ),
  );
}
