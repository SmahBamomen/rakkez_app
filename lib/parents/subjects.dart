import 'package:flutter/material.dart';
import 'package:rkez/parents/menu.dart';
import 'package:rkez/parents/children.dart';
import 'package:rkez/style.dart';

class Math extends StatefulWidget {
  @override
  _MathState createState() => _MathState();
}

class _MathState extends State<Math> {
  String labelText, dropdownValue;
  Color borderColor = RkezColors.greyb4;
  bool isSelect = false;
  Icon icon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'مادة الرياضيات',
          style: TextStyle(
            fontFamily: 'Cairo',
            color: RkezColors.grey66,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_forward,),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Children()),
              );
            }
          ),
        ],
        backgroundColor: RkezColors.greyf5,
        iconTheme: Theme.of(context).iconTheme,
        elevation: 5.0,
        centerTitle: true,
      ),
      drawer: Drawer(child: Menu()),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(height: 40),
            Container(
              height: 48,
              width: 130,
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: this.borderColor, width: 1),
                  ),
                  labelText: labelText,
                  hintStyle: TextStyle(
                    fontFamily: 'Cairo',
                    color: RkezColors.greyb4,
                    fontWeight: FontWeight.w600,
                    //fontSize: 6.0,
                  ),
                  labelStyle: TextStyle(
                    height: 1,
                    fontFamily: 'Cairo',
                    color: RkezColors.greenb0,
                    fontWeight: FontWeight.w600,
                    fontSize: 12.0,
                  ),
                ),
                hint: Text('اختر الأسبوع'),
                value: dropdownValue,
                icon: isSelect ? Icon(Icons.arrow_drop_up) : icon,
                iconSize: 20,
                style: TextStyle(
                  height: 1,
                  fontFamily: 'Cairo',
                  color: RkezColors.black11,
                  fontWeight: FontWeight.w600,
                  fontSize: 12.0,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    if (newValue.isNotEmpty) {
                      labelText = 'الأسابيع';
                      dropdownValue = newValue;
                      borderColor = RkezColors.greenb0;
                      setState(() {
                        isSelect = true;
                      });

                      icon =
                          Icon(Icons.arrow_drop_down, color: RkezColors.grey98);
                    } else {
                      borderColor = RkezColors.greyb4;
                      labelText = null;
                    }
                  });
                },
                items: [
                  'الأسبوع الأول',
                  'الأسبوع الثاني',
                  'الأسبوع الثالث',
                  'الأسبوع الرابع'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: CairoSemiBoldStyle(
                      text: value,
                      color: RkezColors.black11,
                      fontSize: 10,
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 40),
            isSelect
                ? Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30),
                    child: dropdownValue == 'الأسبوع الأول'?tableWeek1():Container())
                : Container()
          ],
        ),
      ),
    );
  }
}

Widget tableWeek1() {
  return Table(
    border: TableBorder.all(color: Colors.black, width: 0.5),
    children: [
      TableRow(children: [
        Center(
          child: Text('اليوم',
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Cairo',
                  color: RkezColors.purple7f0,
                  fontWeight: FontWeight.w700)),
        ),
        Center(
          child: Text('التاريخ',
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Cairo',
                  color: RkezColors.purple7f0,
                  fontWeight: FontWeight.w700)),
        ),
        Center(
          child: Text('نسبة الحضور',
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Cairo',
                  color: RkezColors.purple7f0,
                  fontWeight: FontWeight.w700)),
        ),
        Center(
          child: Text('نسبة التركيز',
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Cairo',
                  color: RkezColors.purple7f0,
                  fontWeight: FontWeight.w700)),
        ),
      ]),
      TableRow(children: [
        Center(
          child: Text('الأحد',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('١٧ - ٦ -١٤٤١ ',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('١٠٠',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('١٠٠',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
      ]),
      TableRow(children: [
        Center(
          child: Text('الإثنين',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('١٨ - ٦ -١٤٤١ ',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('١٠٠',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('٩٩',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
      ]),
      TableRow(children: [
        Center(
          child: Text('الثلاثاء',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('١٩ - ٦ -١٤٤١ ',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('٠',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('٠',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
      ]),
      TableRow(children: [
        Center(
          child: Text('الأربعاء',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('٢٠ - ٦ -١٤٤١ ',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('١٠٠',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('٨٠',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
      ]),
      TableRow(children: [
        Center(
          child: Text('الخميس',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('٢١ - ٦ -١٤٤١ ',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('٥٠',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('٠',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
      ]),
    ],
  );
}

class Arabic extends StatefulWidget {
  @override
  _ArabicState createState() => _ArabicState();
}

class _ArabicState extends State<Arabic> {
  String labelText, dropdownValue;
  Color borderColor = RkezColors.greyb4;
  bool isSelect = false;
  Icon icon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'مادة اللغة العربية',
          style: TextStyle(
            fontFamily: 'Cairo',
            color: RkezColors.grey66,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.arrow_forward,),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Children()),
                );
              }
          ),
        ],
        backgroundColor: RkezColors.greyf5,
        iconTheme: Theme.of(context).iconTheme,
        elevation: 5.0,
        centerTitle: true,
      ),

      drawer: Drawer(child: Menu()),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(height: 40),
            Container(
              height: 48,
              width: 130,
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: this.borderColor, width: 1),
                  ),
                  labelText: labelText,
                  hintStyle: TextStyle(
                    fontFamily: 'Cairo',
                    color: RkezColors.greyb4,
                    fontWeight: FontWeight.w600,
                    //fontSize: 6.0,
                  ),
                  labelStyle: TextStyle(
                    height: 1,
                    fontFamily: 'Cairo',
                    color: RkezColors.greenb0,
                    fontWeight: FontWeight.w600,
                    fontSize: 12.0,
                  ),
                ),
                hint: Text('اختر الأسبوع'),
                value: dropdownValue,
                icon: isSelect ? Icon(Icons.arrow_drop_up) : icon,
                iconSize: 20,
                style: TextStyle(
                  height: 1,
                  fontFamily: 'Cairo',
                  color: RkezColors.black11,
                  fontWeight: FontWeight.w600,
                  fontSize: 12.0,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    if (newValue.isNotEmpty) {
                      labelText = 'الأسابيع';
                      dropdownValue = newValue;
                      borderColor = RkezColors.greenb0;
                      setState(() {
                        isSelect = true;
                      });

                      icon =
                          Icon(Icons.arrow_drop_down, color: RkezColors.grey98);
                    } else {
                      borderColor = RkezColors.greyb4;
                      labelText = null;
                    }
                  });
                },
                items: [
                  'الأسبوع الأول',
                  'الأسبوع الثاني',
                  'الأسبوع الثالث',
                  'الأسبوع الرابع'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: CairoSemiBoldStyle(
                      text: value,
                      color: RkezColors.black11,
                      fontSize: 10,
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 40),
            isSelect
                ? Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: dropdownValue == 'الأسبوع الثاني'?tableWeek2():Container())
                : Container()
          ],
        ),
      ),
    );
  }
}

Widget tableWeek2() {
  return Table(
    border: TableBorder.all(color: Colors.black, width: 0.5),
    children: [
      TableRow(children: [
        Center(
          child: Text('اليوم',
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Cairo',
                  color: RkezColors.purple7f0,
                  fontWeight: FontWeight.w700)),
        ),
        Center(
          child: Text('التاريخ',
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Cairo',
                  color: RkezColors.purple7f0,
                  fontWeight: FontWeight.w700)),
        ),
        Center(
          child: Text('نسبة الحضور',
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Cairo',
                  color: RkezColors.purple7f0,
                  fontWeight: FontWeight.w700)),
        ),
        Center(
          child: Text('نسبة التركيز',
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Cairo',
                  color: RkezColors.purple7f0,
                  fontWeight: FontWeight.w700)),
        ),
      ]),
      TableRow(children: [
        Center(
          child: Text('الأحد',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('٢٤ - ٦ -١٤٤١ ',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('١٠٠',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('١٠٠',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
      ]),
      TableRow(children: [
        Center(
          child: Text('الإثنين',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('٢٥ - ٦ -١٤٤١ ',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('١٠٠',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('٩٩',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
      ]),
      TableRow(children: [
        Center(
          child: Text('الثلاثاء',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('٢٦ - ٦ -١٤٤١ ',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('١٠٠',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('٩٠',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
      ]),
      TableRow(children: [
        Center(
          child: Text('الأربعاء',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('٢٧ - ٦ -١٤٤١ ',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('١٠٠',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('٨٠',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
      ]),
      TableRow(children: [
        Center(
          child: Text('الخميس',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('٢٨ - ٦ -١٤٤١ ',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greyb4,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('١٠٠',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
        Center(
          child: Text('١٠٠',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: RkezColors.greenb0,
                  fontWeight: FontWeight.w600)),
        ),
      ]),
    ],
  );
}
