import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:my_health_assistant/src/views/admin/widget/appbar_admin.dart';
import 'package:my_health_assistant/src/styles/font_styles.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);
  static List<charts.Series<BarModel, String>> _createChart() {
    final data = [
      BarModel(title: 'Account Admin', value: 2),
      BarModel(title: 'Account Doctor', value: 20),
      BarModel(title: 'Account Patient', value: 50),
      BarModel(title: 'Article', value: 40),
    ];
    return [
      charts.Series<BarModel, String>(
        data: data,
        id: 'Sum',
        colorFn: (datum, index) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (BarModel barModel, _) => barModel.title,
        measureFn: (BarModel barModel, _) => barModel.value,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarAdmin(),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'DashBoard',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ContainerDashBoard(
                        title: 'Admin account',
                        number: '2',
                        icon: 'assets/images/admin/profile.svg',
                      ),
                      ContainerDashBoard(
                        title: 'Paitient account',
                        number: '50',
                        icon: 'assets/images/admin/patient.svg',
                      ),
                      ContainerDashBoard(
                        title: 'Doctor account',
                        number: '20',
                        icon: 'assets/images/admin/doctor.svg',
                      ),
                      ContainerDashBoard(
                        title: 'Article',
                        number: '40',
                        icon: 'assets/images/admin/trending-topic.svg',
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                    child: Text(
                      'Statistics',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: charts.BarChart(
                        _createChart(),
                        animate: true,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                    child: Text(
                      'Recent Acticle',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    width: double.infinity,
                    child: DataTable(
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Expanded(
                            child: Text(
                              'ID',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Expanded(
                            child: Text(
                              'Article Title',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Expanded(
                            child: Text(
                              'Created At',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                      rows: const <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('1')),
                            DataCell(Text('How to do this one?')),
                            DataCell(Text('25/11/2022')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('2')),
                            DataCell(Text('covid-19 is dangerous')),
                            DataCell(Text('27/11/2022')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('3')),
                            DataCell(Text('Mental health and wellness tips')),
                            DataCell(Text('27/11/2022')),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerDashBoard extends StatelessWidget {
  const ContainerDashBoard({
    Key? key,
    required this.title,
    required this.number,
    required this.icon,
  }) : super(key: key);
  final String title;
  final String number;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Numer of \n$title',
                    style: MyFontStyles.normalBlackText
                        .copyWith(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Text(
                  number,
                  style: MyFontStyles.blackColorH1
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
            SvgPicture.asset(
              icon,
              width: 60,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class BarModel {
  final String title;
  final int value;
  BarModel({required this.title, required this.value});
}
