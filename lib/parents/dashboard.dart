import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:rkez/style.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<charts.Series<Children, String>> _seriesData;
  _generateData() {
    var data1 = [
      new Children('سماح بامؤمن', 98),
    ];
    var data2 = [
      new Children('سمية بامؤمن', 90),
    ];
    var data3 = [
      new Children('سارة بامؤمن', 88),
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
  }

  List<Color> color = <Color>[
    Color(0xFF7163EE),
    Color(0xFF4EA8E0),
    Color(0xff1BC26C)
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
    dataMap.putIfAbsent("سماح بامؤمن", () => 90);
    dataMap.putIfAbsent("سمية بامؤمن", () => 80);
    dataMap.putIfAbsent("سارة بامؤمن", () => 88);

    return Container(
        color: Color(0xffF2F4F5),
        child: Column(
          children: <Widget>[
            SizedBox(height: 130),
            Container(
              width: 400,
              height: 220,
              padding: EdgeInsets.only(left:20,right: 20,bottom: 10),
              margin: EdgeInsets.only(left:20,right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Center(
                child: Column(
                  children: <Widget>[
                    CairoBoldStyle(
                      text: 'نسبة الحضور والتركيز',
                      fontSize: 19,
                      color: RkezColors.grey65,
                    ),
                    CairoSemiBoldStyle(
                      text: 'الشهر الأول',
                      fontSize: 16,
                      color: RkezColors.grey65,
                    ),
                    Expanded(
                      child: charts.BarChart(
                        _seriesData,
                        animate: true,
                        barGroupingType: charts.BarGroupingType.grouped,
                        //behaviors: [new charts.SeriesLegend()],
                        animationDuration: Duration(seconds: 5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                Container(
                    width: 110,
                    height: 200,
                  //  margin: EdgeInsets.only(right: 50),
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
                          text: 'عدد الأبناء',
                          fontSize: 20,
                          color: RkezColors.grey65,
                        ),
                        CairoSemiBoldStyle(
                          text: '3',
                          fontSize: 20,
                        ),
                      ],
                    )),
                SizedBox(width: 10),
                Container(
                    width: 215,
                    height: 200,
                 //   margin: EdgeInsets.only(left: 80),
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
                          fontSize: 20,
                          color: RkezColors.grey65,
                        ),
                        PieChart(
                          dataMap: dataMap,
                          animationDuration: Duration(milliseconds: 800),
                          chartLegendSpacing: 5,
                          chartRadius: MediaQuery.of(context).size.width / 2.7,
                          showChartValuesInPercentage: false,
                          showChartValues: true,
                          showChartValuesOutside: false,
                          chartValueBackgroundColor: Colors.transparent,
                          colorList: color,
                          showLegends: true,
                          legendPosition: LegendPosition.right,
                          decimalPlaces: 1,
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
            )
          ],
        ));
  }
}

class HomePage extends StatefulWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<charts.Series<Children, String>> _seriesData;
  _generateData() {
    var data1 = [
      new Children('سماح بامؤمن', 98),
    ];
    var data2 = [
      new Children('سمية بامؤمن', 90),
    ];
    var data3 = [
      new Children('سارة بامؤمن', 88),
    ];
    _seriesData.add(
      charts.Series(
        domainFn: (Children pollution, _) => pollution.place,
        measureFn: (Children pollution, _) => pollution.quantity,
        id: 'سماح بامؤمن',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Children pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xffC3D3C)),
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
            charts.ColorUtil.fromDartColor(Color(0xffA9ADB4)),
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
            charts.ColorUtil.fromDartColor(Color(0xff11ABB0)),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesData = List<charts.Series<Children, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff1976d2),
            //backgroundColor: Color(0xff308e1c),
            bottom: TabBar(
              indicatorColor: Color(0xff9962D0),
              tabs: [
                Tab(
                  icon: Icon(FontAwesomeIcons.solidChartBar),
                ),
                Tab(icon: Icon(FontAwesomeIcons.chartPie)),
                Tab(icon: Icon(FontAwesomeIcons.chartLine)),
              ],
            ),
            title: Text('Flutter Charts'),
          ),
          body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      'SO₂ emissions, by world region (in million tonnes)',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: charts.BarChart(
                        _seriesData,
                        animate: true,
                        barGroupingType: charts.BarGroupingType.grouped,
                        //behaviors: [new charts.SeriesLegend()],
                        animationDuration: Duration(seconds: 5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Children {
  String place;
  int quantity;

  Children(this.place, this.quantity);
}
