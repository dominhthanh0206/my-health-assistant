import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_health_assistant/src/data/firebase_firestore/patient/appointment/appointment_functions.dart';
import 'package:my_health_assistant/src/models/appointment/appointment.dart';
import 'package:my_health_assistant/src/pages/patient/screens/schedule/tab_bar/cancelled_page.dart';
import 'package:my_health_assistant/src/pages/patient/screens/schedule/tab_bar/completed_page.dart';
import 'package:my_health_assistant/src/pages/patient/screens/schedule/tab_bar/upcoming_page.dart';
import 'package:my_health_assistant/src/styles/colors.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: MyColors.whiteText,
          elevation: 0.0,
          leading: SvgPicture.asset('assets/images/main_icon.svg',
              color: Colors.blue),
          title: const Text(
            "My Appointment",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon:
                    SvgPicture.asset('assets/images/schedule_page/search.svg'),
                color: Colors.black),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/images/schedule_page/more.svg'))
          ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                TabBar(
                  controller: _tabController,
                  indicatorColor: const Color.fromARGB(255, 55, 148, 224),
                  labelColor: const Color.fromARGB(255, 55, 148, 224),
                  unselectedLabelColor: Colors.black45,
                  tabs: const [
                    Tab(
                      text: 'Upcoming',
                    ),
                    Tab(
                      text: 'Completed',
                    ),
                    Tab(
                      text: 'Cancelled',
                    )
                  ],
                ),
                StreamBuilder<List<Appointment>>(
                  stream: AppointmentFunctions.getAllAppointment(),
                  builder: ((context, snapshot) {
                    if (snapshot.hasError) {
                      return Text('Something went wrong ${snapshot.error}');
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (snapshot.hasData) {
                      List<Appointment> appointments = snapshot.data!;
                      return Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            UpcomingPage(
                                upcoming:
                                    AppointmentFunctions.getAppointmentByCon(
                                        appointments, 'Upcoming')),
                            CompletedPage(
                              completed:
                                  AppointmentFunctions.getAppointmentByCon(
                                      appointments, 'Completed'),
                            ),
                            CancelledPage(
                              cancelled:
                                  AppointmentFunctions.getAppointmentByCon(
                                      appointments, 'Cancelled'),
                            )
                          ],
                        ),
                      );
                    }
                    return Container();
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
