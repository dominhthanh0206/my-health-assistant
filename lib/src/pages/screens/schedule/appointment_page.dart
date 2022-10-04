import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/appointment.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/tab_bar/cancelled_page.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/tab_bar/completed_page.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/tab_bar/upcoming_page.dart';
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

    List<Appointment> appointments = [

      Appointment(
          doctorName: 'Royal Kludge',
          date: 'Oct 20, 2022',
          type: 0,
          time: '09:00 AM',
          imgUrl: 'assets/images/schedule_page/doctor.png'),

      Appointment(
          doctorName: 'DareU DareU',
          date: 'Sep 20, 2022',
          type: 0,
          time: '10:30 AM',
          imgUrl: 'assets/images/schedule_page/doctor.png'),

      Appointment(
          doctorName: 'Akko Akko',
          date: 'Nov 20, 2022',
          type: 0,
          time: '10:30 AM',
          imgUrl: 'assets/images/schedule_page/doctor.png'),

      Appointment(
          doctorName: 'Newmen Newmen',
          date: 'Nov 20, 2022',
          type: 1,
          time: '16:30 PM',
          imgUrl: 'assets/images/schedule_page/doctor.png'),

      Appointment(
          doctorName: 'Edra Edra',
          date: 'Oct 20, 2022',
          type: 1,
          time: '13:00 PM',
          imgUrl: 'assets/images/schedule_page/doctor.png'),
          
      Appointment(
          doctorName: 'Fuhlen Fuhlen',
          date: 'Nov 20, 2022',
          type: 1,
          time: '14:00 PM',
          imgUrl: 'assets/images/schedule_page/doctor.png'),
      
      Appointment(
          doctorName: 'Keychrone',
          date: 'Dec 20, 2022',
          type: 2,
          time: '07:00 AM',
          imgUrl: 'assets/images/schedule_page/doctor.png'),
      
      
      Appointment(
          doctorName: 'Logitech',
          date: 'Dec 20, 2022',
          type: 2,
          time: '15:30 PM',
          imgUrl: 'assets/images/schedule_page/doctor.png'),
    ];

    List<Appointment> upcoming =
        appointments.where((element) => element.type == 0).toList();
    List<Appointment> completed =
        appointments.where((element) => element.type == 1).toList();
    List<Appointment> cancelled =
        appointments.where((element) => element.type == 2).toList();

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
                icon: SvgPicture.asset('assets/images/schedule_page/search.svg'),
                color: Colors.black),
            IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/images/schedule_page/more.svg'))
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
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      UpcomingPage(upcoming: upcoming),
                      CompletedPage(
                        completed: completed,
                      ),
                      CancelledPage(
                        cancelled: cancelled,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
