import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_health_assistant/src/pages/patient/screens/home/component/my_list_doctor.dart';

import 'package:my_health_assistant/src/pages/patient/screens/home/component/doctor_object.dart';
import 'package:my_health_assistant/src/pages/patient/screens/home/component/not_found.dart';
import 'package:my_health_assistant/src/pages/patient/screens/profile/profile_page.dart';
import 'package:my_health_assistant/src/styles/colors.dart';
import 'component/title_tabbar.dart';

class SearchDoctorScreen extends StatefulWidget {
  const SearchDoctorScreen({Key? key}) : super(key: key);

  @override
  State<SearchDoctorScreen> createState() => _SearchDoctorScreenState();
}

class _SearchDoctorScreenState extends State<SearchDoctorScreen>
    with TickerProviderStateMixin {
  List<DoctorObject> doctors = listDoctor;
  List<DoctorObject> general = [];
  List<DoctorObject> dentist = [];
  List<DoctorObject> ophthalmologist = [];
  List<DoctorObject> nutritionist = [];
  List<DoctorObject> neurologist = [];
  List<DoctorObject> pediatric = [];
  List<DoctorObject> radiology = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    general =
        listDoctor.where((element) => element.department == 'General').toList();
    dentist =
        listDoctor.where((element) => element.department == 'Dentist').toList();
    ophthalmologist = listDoctor
        .where((element) => element.department == 'Ophthalmologist')
        .toList();
    nutritionist = listDoctor
        .where((element) => element.department == 'Nutritionist')
        .toList();
    neurologist = listDoctor
        .where((element) => element.department == 'Neurologist')
        .toList();
    pediatric = listDoctor
        .where((element) => element.department == 'Pediatric')
        .toList();
    radiology = listDoctor
        .where((element) => element.department == 'Radiology')
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 8, vsync: this);
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 80,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.grey[50],
          elevation: 0.0,
          title: TextField(
            autofocus: true,
            maxLines: 1,
            style: const TextStyle(
              fontSize: 16,
            ),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              filled: true,
              prefixIcon: const Icon(
                Icons.search,
              ),
              border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              fillColor: Colors.grey[200],
              hintText: 'Search',
              hintStyle: const TextStyle(fontSize: 16.0),
              suffixIcon: IconButton(
                  icon: SvgPicture.asset(
                    'assets/images/home_page/filter.svg',
                    color: MyColors.mainColor,
                  ),
                  onPressed: () {}),
            ),
            onChanged: searchDoctor,
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
              child: TabBar(
                controller: tabController,
                labelColor: MyColors.whiteText,
                isScrollable: true,
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                labelPadding: const EdgeInsets.symmetric(horizontal: 6),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: MyColors.mainColor),
                tabs: const [
                  TabbarTitle(title: 'All'),
                  TabbarTitle(title: 'General'),
                  TabbarTitle(title: 'Dentist'),
                  TabbarTitle(title: 'Ophthalmologist'),
                  TabbarTitle(title: 'Nutritionist'),
                  TabbarTitle(title: 'Neurologist'),
                  TabbarTitle(title: 'Pediatric'),
                  TabbarTitle(title: 'Radiology'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  doctors.isEmpty ? const NotFoundScreen() : MyListDoctor(department: doctors),
                  MyListDoctor(department: general),
                  MyListDoctor(department: dentist),
                  MyListDoctor(department: ophthalmologist),
                  MyListDoctor(department: nutritionist),
                  MyListDoctor(department: neurologist),
                  MyListDoctor(department: pediatric),
                  MyListDoctor(department: radiology)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void searchDoctor(String query) {
    final suggestions = listDoctor.where((doctor) {
      final doctorName = doctor.doctorName.toLowerCase();

      final searchLower = query.toLowerCase();

      return doctorName.contains(searchLower);
    }).toList();

    setState(() {
      if (query.isNotEmpty) {
        doctors = suggestions;
      } else {
        doctors = listDoctor;
      }
    });
  }
}
