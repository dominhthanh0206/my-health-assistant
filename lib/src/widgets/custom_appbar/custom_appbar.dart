import 'package:flutter/material.dart';

import 'app_bar_action.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSize {
  CustomAppBar(
      {Key? key,
      required this.title,
      this.leading,
      this.actions,
      this.tabBar,
      this.toolbarHeight})
      : super(key: key);
  final String title;
  List<String>? actions;
  final TabBar? tabBar;
  final double? toolbarHeight;
  Widget? leading;
  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight ?? 65);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: leading,
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.grey[50],
      elevation: 0.0,
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      actions: actions?.map((e) => AppBarAction(e)).toList(),
      bottom: tabBar,
    );
  }

  @override
  Widget get child => throw UnimplementedError();
}
