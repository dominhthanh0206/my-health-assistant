import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_health_assistant/src/pages/doctor/appointment/component/appointment_object.dart';
import 'package:my_health_assistant/src/pages/doctor/appointment/component/status_page.dart';
import 'package:my_health_assistant/src/styles/colors.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen>
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
    List<AppointmentObject> upcoming =
        listAppointment.where((element) => element.type == 1).toList();
    List<AppointmentObject> completed =
        listAppointment.where((element) => element.type == 2).toList();
    List<AppointmentObject> cancelled =
        listAppointment.where((element) => element.type == 3).toList();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.whiteText,
          elevation: 0.0,
          leading: SvgPicture.asset('assets/images/main_icon.svg',
              color: Colors.blue),
          title: const Text(
            "Appointment",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  labelStyle: const TextStyle(fontSize: 16),
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
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      MyListStatus(
                        status: upcoming,
                        color: Colors.blue,
                      ),
                      MyListStatus(
                        status: completed,
                        color: Colors.green,
                      ),
                      MyListStatus(
                        status: cancelled,
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}


