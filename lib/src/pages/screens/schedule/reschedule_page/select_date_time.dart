import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/reschedule_page/custom_time_container.dart';
import 'package:my_health_assistant/src/widgets/custom_appbar/custom_appbar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class SelectDateTime extends StatelessWidget {
  const SelectDateTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> times = [
      '09:00 AM',
      '09:30 AM',
      '10:00 AM',
      '10:30 AM',
      '11:00 AM',
      '11:30 AM',
      '12:00 AM',
      '13:30 AM',
      '14:00 AM',
      '14:30 AM',
      '15:00 AM',
      '15:30 AM',
      '16:00 AM',
      '16:30 AM',
      '17:00 AM',
    ];
    Color mainColor = const Color.fromARGB(255, 0, 106, 192);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: CustomAppBar(title: 'Reschedule Appointment'),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: size.height,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
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
                        // showTodayButton: true,
                        navigationMode: DateRangePickerNavigationMode.none,
                        backgroundColor: Colors.blue[50],
                        headerHeight: 30,
                        enablePastDates: false,
                        view: DateRangePickerView.month,
                        showNavigationArrow: true,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Select Hour',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3, childAspectRatio: (3)),
                        itemCount: times.length,
                        itemBuilder: (context, index) {
                          return CustomTimeContainer(hour: times[index]);
                        }),
                  ],
                ),
              ),
              Center(
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(32.0))),
                                title: Text(
                                  'Reschedule Success',
                                  style:
                                      TextStyle(color: mainColor, fontSize: 20),
                                ),
                                content: const Text(
                                    'Appointment successfully changed. You will receive a notification and the doctor you selected will contact you.',
                                    style: TextStyle(fontSize: 15)),
                                actions: <Widget>[
                                  Column(
                                    children: [
                                      Container(
                                        // margin: const EdgeInsets.symmetric(vertical: 20),
                                        width: size.width - 40,
                                        height: 40,
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            style: ButtonStyle(
                                                shape: MaterialStateProperty.all(
                                                    const RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    20))))),
                                            child: const Text(
                                              'View Appointment',
                                              style: TextStyle(fontSize: 16),
                                            )),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        width: size.width - 40,
                                        height: 40,
                                        child: TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            style: ButtonStyle(
                                                shape: MaterialStateProperty.all(
                                                    const RoundedRectangleBorder(
                                                        side: BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    0,
                                                                    117,
                                                                    212)),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    20))))),
                                            child: const Text(
                                              'Cancel',
                                              style: TextStyle(fontSize: 16),
                                            )),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                      style: ButtonStyle(
                          // backgroundColor: MaterialStateProperty(mainColor),
                          shape: MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))))),
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 16),
                      )),
                ),
              )
            ],
          ),
        ));
  }
}

// void showCustomDialog(BuildContext context) {
//   showGeneralDialog(
//     context: context,
//     barrierLabel: "Barrier",
//     barrierDismissible: true,
//     barrierColor: Colors.black.withOpacity(0.5),
//     transitionDuration: Duration(milliseconds: 700),
//     pageBuilder: (_, __, ___) {
//       return Center(
//         child: Container(
//           height: 240,
//           child: SizedBox.expand(child: Container(child: Text('Hello'),)),
//           margin: EdgeInsets.symmetric(horizontal: 20),
//           decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(40)),
//         ),
//       );
//     },
//     transitionBuilder: (_, anim, __, child) {
//       Tween<Offset> tween;
//       if (anim.status == AnimationStatus.reverse) {
//         tween = Tween(begin: const Offset(-1, 0), end: Offset.zero);
//       } else {
//         tween = Tween(begin: const Offset(1, 0), end: Offset.zero);
//       }

//       return SlideTransition(
//         position: tween.animate(anim),
//         child: FadeTransition(
//           opacity: anim,
//           child: child,
//         ),
//       );
//     },
//   );
// }

// void showCustomDialog(BuildContext context, Color color) {
//   Size size = MediaQuery.of(context).size;
//   showGeneralDialog<String>(
//     context: context,
//     barrierLabel: "Barrier",
//     barrierDismissible: true,
//     barrierColor: Colors.black.withOpacity(0.5),
//     transitionDuration: const Duration(milliseconds: 400),
//     pageBuilder: (_, __, ___) {
//       return Center(
//         child: Container(
//           height: 500,
//           margin: const EdgeInsets.symmetric(horizontal: 20),
//           decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(40)),
//           child: Padding(
//             padding: const EdgeInsets.all(10),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 30),
//               child: Column(
//                 children: [
//                   const FlutterLogo(size: 100,),
//                   Text('Reschedule Success', style: TextStyle(color: color, fontSize: 20),),
//                   Text('Appointment successfully changed. You will receive a notification and the doctor zyou selected will contact you.',
//                   style: TextStyle(color: color, fontSize: 15),),

//                   SizedBox(
//                     width: size.width - 40,
//                     child: ElevatedButton(onPressed: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (_) => const SelectDateTime()));
//                     },
//                     style: ButtonStyle(
//                       shape: MaterialStateProperty.all(
//                         const RoundedRectangleBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(20))
//                         )
//                       )
//                     ),
//                       child: const Text('Next', style: TextStyle(fontSize: 16),)),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       );
//     },
//     transitionBuilder: (_, anim, __, child) {
//       Tween<Offset> tween;
//       if (anim.status == AnimationStatus.reverse) {
//         tween = Tween(begin: Offset(-1, 0), end: Offset.zero);
//       } else {
//         tween = Tween(begin: Offset(1, 0), end: Offset.zero);
//       }

//       return SlideTransition(
//         position: tween.animate(anim),
//         child: FadeTransition(
//           opacity: anim,
//           child: child,
//         ),
//       );
//     },
//   );
// }
