import 'package:flutter/material.dart';
import 'package:rkez/parents/menu.dart';
import 'package:rkez/parents/subjects.dart';
import 'package:rkez/style.dart';

class Children extends StatefulWidget {
  @override
  _ChildrenState createState() => _ChildrenState();
}

class _ChildrenState extends State<Children> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ركز',style: TextStyle(
          fontFamily: 'Cairo',
          color: RkezColors.grey66,
          fontWeight: FontWeight.w600,
          fontSize: 25,
        ),),
        backgroundColor: RkezColors.greyf5,
        iconTheme: Theme.of(context).iconTheme,
        elevation: 0.0,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Menu(),
      ),
      body: Container(
        color: Colors.white,
        width: 500,
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 130),
              Center(
                child: Container(
                  height:80,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      border: Border.all(color: RkezColors.grey98),
                    borderRadius: BorderRadius.all( Radius.circular(10.0),
                    ),
                  ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10),
                    Row(children: <Widget>[
                      SizedBox(width: 15),
                      CairoBoldStyle(
                        color: RkezColors.bluee1,
                        text: 'الإسم:',
                        fontSize: 12,
                      ),
                      SizedBox(width: 5),
                      CairoSemiBoldStyle(
                        color: RkezColors.greyb4,
                        text: 'سماح حسن بامؤمن',
                        fontSize: 10.5,
                      ),
                      SizedBox(width: 33),
                      CairoBoldStyle(
                        color: RkezColors.bluee1,
                        text: 'الصف:',
                        fontSize: 12,
                      ),
                      SizedBox(width: 5),
                      CairoSemiBoldStyle(
                        color: RkezColors.greyb4,
                        text: 'الثالث ثانوي',
                        fontSize: 10.5,
                      ),
                    ],),
                    SizedBox(height: 10),
                    Row(children: <Widget>[
                      SizedBox(width: 15),
                      CairoBoldStyle(
                        color: RkezColors.bluee1,
                        text: 'عدد المواد:',
                        fontSize: 12,
                      ),
                      SizedBox(width: 5),
                      CairoSemiBoldStyle(
                        color: RkezColors.greyb4,
                        text: '7',
                        fontSize: 10.5,
                      ),
                      SizedBox(width: 85),
                      CairoBoldStyle(
                        color: RkezColors.bluee1,
                        text: 'نسبة التركيز:',
                        fontSize: 12,
                      ),
                      SizedBox(width: 5),
                      CairoSemiBoldStyle(
                        color: RkezColors.greyb4,
                        text: '%80',
                        fontSize: 10.5,
                      ),
                    ],)



                  ],
                ),
                ),
              ),
              SizedBox(height: 30),
              CairoBlackStyle(
                color: RkezColors.greenb0,
                text: '#المواد:',
                fontSize: 15,
              ),
              SizedBox(height: 7),
              FlatButton(
                color: RkezColors.greyf5,
                child: Row(
                  children: <Widget>[
                    CairoRegularStyle(
                      text: 'مادة الرياضيات',
                      color: RkezColors.grey66,
                      fontSize: 13,
                    ),
                    SizedBox(width: 200),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.arrow_forward_ios,
                            color: RkezColors.grey8E, size: 18)),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Math()),
                  );
                },
              ),
              FlatButton(
                color: RkezColors.greyf5,
                child: Row(
                  children: <Widget>[
                    CairoRegularStyle(
                      text: 'مادة اللغة العربية',
                      fontSize: 13,
                      color: RkezColors.grey66,
                    ),
                    SizedBox(width: 180),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.arrow_forward_ios,
                            color: RkezColors.grey8E, size: 18)),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Arabic()),
                  );
                },
              ),
              FlatButton(
                color: RkezColors.greyf5,
                child: Row(
                  children: <Widget>[
                    CairoRegularStyle(
                      text: 'مادة التربية المهنية',
                      fontSize: 13,
                      color: RkezColors.grey66,
                    ),
                    SizedBox(width: 165),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.arrow_forward_ios,
                            color: RkezColors.grey8E, size: 18)),
                  ],
                ),
                onPressed: () {
                },
              ),
              FlatButton(
                color: RkezColors.greyf5,
                child: Row(
                  children: <Widget>[
                    CairoRegularStyle(
                      text: 'مادة الفيزياء',
                      fontSize: 13,
                      color: RkezColors.grey66,
                    ),
                    SizedBox(width: 205),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.arrow_forward_ios,
                            color: RkezColors.grey8E, size: 18)),
                  ],
                ),
                onPressed: () {},
              ),
              FlatButton(
                color: RkezColors.greyf5,
                child: Row(
                  children: <Widget>[
                    CairoRegularStyle(
                      text: 'مادة الأحياء',
                      color: RkezColors.grey66,
                      fontSize: 13,
                    ),
                    SizedBox(width: 210),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.arrow_forward_ios,
                            color: RkezColors.grey8E, size: 18)),
                  ],
                ),
                onPressed: () {},
              ),
              FlatButton(
                color: RkezColors.greyf5,
                child: Row(
                  children: <Widget>[
                    CairoRegularStyle(
                      text: 'مادة الكيمياء',
                      color: RkezColors.grey66,
                      fontSize: 13,
                    ),
                    SizedBox(width: 200),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.arrow_forward_ios,
                            color: RkezColors.grey8E, size: 18)),
                  ],
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
    );
  }
}
