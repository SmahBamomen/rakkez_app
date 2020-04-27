import 'package:flutter/material.dart';
import 'package:rkez/parents/dashboard.dart';
import 'package:rkez/parents/menu.dart';
import 'package:rkez/teacher/dashboard_teacher.dart';
import 'package:rkez/teacher/menu_teacher.dart';
import 'package:rkez/style.dart';

class MainTeacher extends StatefulWidget {
  @override
  _MainTeacherState createState() => _MainTeacherState();
}

class _MainTeacherState extends State<MainTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('ركّز',style: TextStyle(
          fontFamily: 'Cairo',
          color: RkezColors.grey66,
          fontWeight: FontWeight.w600,
          fontSize: 25,
        ),),
        backgroundColor: RkezColors.greyf5,
        iconTheme: Theme.of(context).iconTheme,
        elevation: 5.0,
        centerTitle: true,
      ),
      drawer:Drawer(
        child: MenuTeacher(),
      ),
      body: DashboardTeacher(),
      extendBodyBehindAppBar: true,
    );
  }
}
