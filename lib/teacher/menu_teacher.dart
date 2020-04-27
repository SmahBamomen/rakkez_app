import 'package:flutter/material.dart';
import 'package:rkez/login.dart';
import 'package:rkez/parents/children.dart';
import 'package:rkez/style.dart';
import 'package:rkez/teacher/main_teacher.dart';

class MenuTeacher extends StatefulWidget {
  @override
  _MenuTeacherState createState() => _MenuTeacherState();
}

class _MenuTeacherState extends State<MenuTeacher> {
  String children = '';
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: <Widget>[
      Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            Container(
              width: 90,
              height: 100,
              child: Material(
                  elevation: 4.0,
                  shape: CircleBorder(),
                  color: Colors.white,
                  child: IconButton(
                    icon: Icon(
                      Icons.person,
                      size: 70,
                      color: RkezColors.greyb4,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainTeacher()),
                      );
                    },
                  )),
            ),
            CairoBlackStyle(
              text: 'أهلاً بك ',
              fontSize: 23,
              color: RkezColors.bluede,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CairoBoldStyle(
                text: ' أحمد الغامدي',
                fontSize: 12,
                color: RkezColors.greenb0,
              ),
            ),
            SizedBox(height: 6.0),
            Container(
              height: 230,
              child: ExpansionTile(
                  key: GlobalKey(),
                  title: Text('الطلاب'),
                  children: <Widget>[
                    ListTile(
                      title: const Text(
                        'احمد الحربي',
                        style: TextStyle(color: RkezColors.grey98),
                      ),
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Children()),
                          );
                        });
                      },
                    ),
                    ListTile(
                      title: const Text(
                        'طارق باموسى',
                        style: TextStyle(color: RkezColors.grey98),
                      ),
                      onTap: () {
                        setState(() {
                          this.children = 'طارق باموسى';
                        });
                      },
                    ),
                    ListTile(
                      title: const Text(
                        'عبدالرحمن الاحمدي',
                        style: TextStyle(color: RkezColors.grey98),
                      ),
                      onTap: () {
                        setState(() {
                          this.children = 'عبدالرحمن الاحمدي';
                        });
                      },
                    ),



                  ]),
            ),
            SizedBox(height: 180.0),
            CustomRaisedButtonGradient(
              left: 25.0,
              top: 5.6,
              right: 25.0,
              bottom: 5.6,
              text: 'تسجيل خروح',
              fontSize: 15.1,
              onPressed: () {
                _showDialog();
              },
            )
          ],
        ),
      ),
    ]));
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("تسجيل خروج"),
          content: new Text("هل أنت متاكد؟"),
          actions: <Widget>[
            new FlatButton(
              child: new Text("نعم"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
            ),
            new FlatButton(
              child: new Text("لا"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
