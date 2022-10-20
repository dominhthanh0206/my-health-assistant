import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_health_assistant/src/models/department_model.dart';
import 'package:my_health_assistant/src/pages/patient/screens/home/component/banner.dart';
import 'package:my_health_assistant/src/pages/patient/screens/home/component/medical_card.dart';
import 'package:my_health_assistant/src/pages/patient/screens/home/component/title_of_list.dart';
import 'package:my_health_assistant/src/pages/patient/screens/home/component/title_tabbar.dart';
import 'package:my_health_assistant/src/styles/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 8, vsync: this);
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          AssetImage("assets/images/schedule_page/doctor.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Good Morning 👋',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          SizedBox(height: 8),
                          Text('Andrew Ainsley',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20))
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/images/home_page/bell-alert.svg',
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                            'assets/images/home_page/heart.svg'))
                  ],
                )
              ],
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(0.5, 2))
                      ]),
                  child: TextField(
                    maxLines: 1,
                    style: const TextStyle(
                        fontSize: 14, color: Color.fromRGBO(138, 160, 188, 1)),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      filled: true,
                      prefixIcon: const Icon(Icons.search,
                          color: Color.fromRGBO(138, 160, 188, 1)),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(18))),
                      fillColor: const Color.fromRGBO(238, 246, 252, 1),
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(138, 160, 188, 1)),
                      suffixIcon: IconButton(
                          icon: SvgPicture.asset(
                            'assets/images/home_page/filter.svg',
                            color: MyColors.mainColor,
                          ),
                          onPressed: () {}),
                    ),
                  ),
                )),
            const BannerDoctor(),
            TitleOfList(
              title: 'Doctor Specialty',
              onPressed: () => log('See All'),
            ),
            SizedBox(
              height: 200,
              child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  mainAxisSpacing: 15.0,
                  children: List.generate(listDepartMent.length, (index) {
                    return MedicalCard(department: listDepartMent[index]);
                  })),
            ),
            TitleOfList(title: 'Top Doctors', onPressed: () => log('See All')),
            SizedBox(
              height: 30,
              child: TabBar(
                controller: tabController,
                labelColor: MyColors.whiteText,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                labelPadding: const EdgeInsets.symmetric(horizontal: 6),
                unselectedLabelColor: Colors.black,
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
            )
          ],
        ),
      ),
    ));
  }
}