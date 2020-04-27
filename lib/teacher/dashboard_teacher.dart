import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:rkez/style.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DashboardTeacher extends StatefulWidget {
  @override
  _DashboardTeacherState createState() => _DashboardTeacherState();
}

class _DashboardTeacherState extends State<DashboardTeacher> {
  List<charts.Series<Children, String>> _seriesData;
  _generateData() {

    var data1 = [
      new Children('احمد ', 98),
    ];
    var data2 = [
      new Children('طارق ', 90),
    ];
    var data3 = [
      new Children('عبدالرحمن ', 88),
    ];
    var data4 = [
      new Children('محمد ', 98),
    ];
    var data5 = [
      new Children('عماد ', 90),
    ];
    var data6 = [
      new Children('تركي ', 88),
    ];
    var data7 = [
      new Children('أيمن ', 98),
    ];
    var data8 = [
      new Children('أحمد ', 90),
    ];
    var data9 = [
      new Children('فهد ', 80),
    ];
    var data10 = [
      new Children('أنس ', 98),
    ];
    var data11 = [
      new Children('عبدالعزيز ', 90),
    ];
    var data12 = [
      new Children('عبدالاله ', 88),
    ];

    var data13 = [
      new Children('سامر ', 98),
    ];
    var data14 = [
      new Children('صفوان ', 90),
    ];
    var data15 = [
      new Children('باسل ', 88),
    ];
    var data16 = [
      new Children('عبدالرحيم ', 98),
    ];
    var data17 = [
      new Children('عبدالله ', 90),
    ];
    var data18 = [
      new Children('بندر ', 80),
    ];
    var data19 = [
      new Children('براء ', 98),
    ];
    var data20 = [
      new Children('اياد ', 90),
    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سماح بامؤمن',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xFF7163EE)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سمية بامؤمن',
        data: data2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xFF4EA8E0)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سارة بامؤمن',
        data: data3,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff1BC26C)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سماح بامؤمن',
        data: data4,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xFF7163EE)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سمية بامؤمن',
        data: data5,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xFF4EA8E0)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سارة بامؤمن',
        data: data6,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff1BC26C)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سماح بامؤمن',
        data: data7,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xFF7163EE)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سمية بامؤمن',
        data: data8,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xFF4EA8E0)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سارة بامؤمن',
        data: data9,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff1BC26C)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سماح بامؤمن',
        data: data10,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xFF7163EE)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سمية بامؤمن',
        data: data11,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xFF4EA8E0)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سارة بامؤمن',
        data: data12,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff1BC26C)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سماح بامؤمن',
        data: data13,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xFF7163EE)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سمية بامؤمن',
        data: data14,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xFF4EA8E0)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سارة بامؤمن',
        data: data15,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff1BC26C)),
      ),
    );
    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سماح بامؤمن',
        data: data16,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xFF7163EE)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سمية بامؤمن',
        data: data17,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xFF4EA8E0)),
      ),
    );

    _seriesData.add(
      charts.Series(

        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سارة بامؤمن',
        data: data18,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff1BC26C)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سماح بامؤمن',
        data: data19,
        fillPatternFn: (_, __) => charts.FillPatternType.forwardHatch,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xFF7163EE)),
      ),
    );

    _seriesData.add(
      charts.Series(

        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سمية بامؤمن',
        data: data20,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xFF4EA8E0)),
      ),
    );


  }

  List<Color> color = <Color>[
    Color(0xFF7163EE),
    Color(0xFF4EA8E0),
    Color(0xff1BC26C),
    Color(0xFF7163EE),
    Color(0xFF4EA8E0),
    Color(0xff1BC26C),
    Color(0xFF7163EE),
    Color(0xFF4EA8E0),
    Color(0xff1BC26C),
    Color(0xFF7163EE),
    Color(0xFF4EA8E0),
    Color(0xff1BC26C),
    Color(0xFF7163EE),
    Color(0xFF4EA8E0),
    Color(0xff1BC26C),
    Color(0xFF7163EE),
    Color(0xFF4EA8E0),
    Color(0xff1BC26C),
    Color(0xFF7163EE),
    Color(0xFF4EA8E0),

  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _seriesData = List<charts.Series<Children, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("احمد الحربي", () => 90);
    dataMap.putIfAbsent("طارق باموسى", () => 80);
    dataMap.putIfAbsent("عبدالرحمن الاحمدي", () => 88);
    dataMap.putIfAbsent("محمد بامؤمن", () => 90);
    dataMap.putIfAbsent("عماد الصبحي", () => 80);
    dataMap.putIfAbsent("تركي الثبيتي", () => 88);
    dataMap.putIfAbsent("أيمن الحربي", () => 90);
    dataMap.putIfAbsent("أحمد العتيبي", () => 80);
    dataMap.putIfAbsent("فهد أحمد", () => 88);
    dataMap.putIfAbsent("أنس الجمل", () => 90);
    dataMap.putIfAbsent("عبدالعزيز العمودي", () => 80);
    dataMap.putIfAbsent("عبدالاله الغامدي", () => 88);
    dataMap.putIfAbsent("سامر محمد", () => 90);
    dataMap.putIfAbsent("صفوان الزهراني", () => 80);
    dataMap.putIfAbsent("باسل الرفاعي", () => 88);
    dataMap.putIfAbsent("عبدالرحيم الأيوبي", () => 90);
    dataMap.putIfAbsent("عبدالله السيد", () => 80);
    dataMap.putIfAbsent("بندر اللقماني", () => 88);
    dataMap.putIfAbsent("براء الحربي", () => 90);
    dataMap.putIfAbsent("اياد الصاعدي", () => 80);
    return SingleChildScrollView(
      child: Container(
          color: Color(0xffF2F4F5),
          child: Column(
            children: <Widget>[
              SizedBox(height: 110),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20),
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[

                    Container(
                      width: 800,
                     padding: EdgeInsets.only(bottom: 10),
                     margin: EdgeInsets.only(left:20,right: 20),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Padding(
                            padding: const EdgeInsets.only(right:80.0),
                            child: CairoBoldStyle(
                              text: 'نسبة الحضور والتركيز',
                              fontSize: 19,
                              color: RkezColors.grey65,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(right:135.0),
                            child: CairoSemiBoldStyle(
                              text: 'الشهر الأول',
                              fontSize: 16,
                              color: RkezColors.grey65,
                            ),
                          ),
                          Expanded(
                            child: charts.BarChart(
                              _seriesData,
                              animate: true,
                              vertical: true,
                              barGroupingType: charts.BarGroupingType.stacked,
                              //behaviors: [new charts.SeriesLegend()],
                              animationDuration: Duration(seconds: 5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Row(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 20),
                  Container(
                      width: 100,
                      height: 200,
                //      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 55),
                          CairoBoldStyle(
                            text: 'عدد الطلاب',
                            fontSize: 20,
                            color: RkezColors.grey65,
                          ),
                          CairoSemiBoldStyle(
                            text: '20',
                            fontSize: 20,
                          ),
                        ],
                      )),

                  SizedBox(width: 10),
                  Container(
                      width: 230,
                      height: 800,
                  ///    margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 10),
                          CairoBoldStyle(
                            text: 'نسبة التركيز',
                            fontSize: 17,
                            color: RkezColors.grey65,
                          ),
                          PieChart(
                            dataMap: dataMap,
                            animationDuration: Duration(milliseconds: 800),
                            chartLegendSpacing: 1,
                            chartRadius: MediaQuery.of(context).size.width / 0.7,
                            showChartValuesInPercentage: false,
                            showChartValues: true,
                            showChartValuesOutside: false,
                            chartValueBackgroundColor: Colors.transparent,
                            colorList: color,
                            showLegends: true,
                            legendPosition: LegendPosition.bottom,
                            decimalPlaces: 0,
                            showChartValueLabel: true,
                            initialAngle: 0,
                            chartValueStyle: defaultChartValueStyle.copyWith(
                              color: Colors.white,
                            ),
                            chartType: ChartType.disc,
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(height: 40),
            ],
          )),
    );
  }
}



class Children {
  String place;
  int quantity;

  Children(this.place, this.quantity);
}
