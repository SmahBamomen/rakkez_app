import 'package:flutter/material.dart';
import 'package:rkez/login.dart';
import 'package:rkez/parents/children.dart';
import 'package:rkez/parents/main_parents.dart';
import 'package:rkez/style.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainParents()),
                    );
                  },
                )
              ),
            ),

            CairoBlackStyle(
              text: 'أهلاً بك ',
              fontSize: 23,
              color: RkezColors.bluede,
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: CairoBoldStyle(
                text: ' حسن بامؤمن',
                fontSize: 12,
                color: RkezColors.greenb0,
              ),
            ),
            SizedBox(height: 6.0),
            Container(
              height: 230,
              child: ExpansionTile(
                  key: GlobalKey(),
                  title: Text('الأبناء'),
                  children: <Widget>[
                    ListTile(
                      title: const Text('سماح حسن بامؤمن',style: TextStyle(color: RkezColors.grey98),),
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
                      title: const Text('سارة حسن',style: TextStyle(color: RkezColors.grey98),),
                      onTap: () {
                        setState(() {
                          this.children = 'سارة حسن';
                        });
                      },
                    ),
                    ListTile(
                      title: const Text('سمية حسن',style: TextStyle(color: RkezColors.grey98),),
                      onTap: () {
                        setState(() {
                          this.children = 'سمية حسن';
                        });
                      },
                    )
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
