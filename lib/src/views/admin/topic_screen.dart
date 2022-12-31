import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:my_health_assistant/src/views/admin/widget/appbar_admin.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarAdmin(),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Article',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Manage All Article post',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        )
                      ]),
                ),
                const SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  width: MediaQuery.of(context).size.width,
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
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'Created by',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            '',
                          ),
                        ),
                      ),
                    ],
                    rows: <DataRow>[
                      DataRow(
                        cells: [
                          const DataCell(Text('1')),
                          const DataCell(Text('How to do this one?')),
                          const DataCell(Text('25/11/2022')),
                          const DataCell(Text('Đỗ Minh Thành')),
                          DataCell(IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                  CupertinoIcons.xmark_circle_fill))),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('2')),
                          const DataCell(Text('Flutter is so amazing')),
                          const DataCell(Text('27/11/2022')),
                          const DataCell(Text('Viên Quang Minh')),
                          DataCell(IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                  CupertinoIcons.xmark_circle_fill))),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('3')),
                          const DataCell(Text('Is C++ important?')),
                          const DataCell(Text('27/11/2022')),
                          const DataCell(Text('Nguyen Son')),
                          DataCell(IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                  CupertinoIcons.xmark_circle_fill))),
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
    );
  }
}
