import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:my_health_assistant/src/data/firebase_firestore/patient/appointment/appointment_functions.dart';
import 'package:my_health_assistant/src/models/appointment/appointment.dart';
import 'package:my_health_assistant/src/pages/global_var.dart';
import 'package:my_health_assistant/src/widgets/buttons/my_elevated_button.dart';
import 'package:my_health_assistant/src/widgets/custom_appbar/custom_appbar.dart';
import 'package:my_health_assistant/src/widgets/my_dialog.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'my_custom_gridview_hours.dart';

class SelectDateTimePage extends StatefulWidget {
  const SelectDateTimePage({Key? key}) : super(key: key);

  @override
  State<SelectDateTimePage> createState() => _SelectDateTimePageState();
}

class _SelectDateTimePageState extends State<SelectDateTimePage> {
  String time = '09:00';
  String date = DateFormat('dd-MM-yyyy').format(DateTime.now());
  String status = 'Upcoming';

  @override
  Widget build(BuildContext context) {
    List<String> times = [
      '09:00',
      '09:30',
      '10:00',
      '10:30',
      '11:00',
      '11:30',
      '12:00',
      '13:30',
      '14:00',
      '14:30',
      '15:00',
      '15:30',
      '16:00',
      '16:30',
      '17:00',
    ];

    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    Color mainColor = const Color.fromARGB(255, 0, 106, 192);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: CustomAppBar(title: 'Reschedule Appointment'),
        body: SingleChildScrollView(
          child: Padding(
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
                        onSelectionChanged:
                            (dateRangePickerSelectionChangedArgs) {
                          date = DateFormat('dd-MM-yyyy').format(
                              dateRangePickerSelectionChangedArgs.value);
                        },
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
                    MyCustomGridViewHours(
                      times: times,
                      getTime: (value) => _getTime(value),
                      date: date,
                    )
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
                      customFunction: () {
                        final key = UniqueKey().toString();
                        Appointment appointment = Appointment(
                            date: date,
                            doctorId: arguments['doctor'].id,
                            doctorName: arguments['doctor'].fullName,
                            patientId: auth.currentUser!.uid,
                            reason: '',
                            status: status,
                            time: time,
                            id: key);
                        AppointmentFunctions.addAppointment(
                            appointment.toJson(), key);
                        Logger().v(
                            '========== \n CurrentUser: ${auth.currentUser!.uid}\n DoctorId: ${arguments['doctor'].id}\n Time: $time\n Date: $date\n Status: $status\n=========');
                        showMyDialog(
                            context,
                            mainColor,
                            size,
                            'Reschedule Success',
                            'Appointment successfully changed. You will receive a notification and the doctor you selected will contact you.',
                            'assets/images/schedule_page/schedule.png',206);
                      },
                      fontSize: 16,
                      text: 'Submit',
                      textColor: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  String _getTime(String value) {
    time = value;
    return time;
  }
}
