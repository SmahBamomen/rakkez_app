
import 'package:flutter/material.dart';

class CairoSemiBoldStyle extends CustomTextStyle {
  CairoSemiBoldStyle({
    String text,
    Color color,
    double fontSize,
    double height,
    TextDecoration decoration
  }) : super(
      text:text,
      color: color,
      fontSize:fontSize,
      fontWeight:FontWeight.w600,
      height:height,
      decoration:decoration
  );
}

class CairoRegularStyle extends CustomTextStyle {
  CairoRegularStyle({
    String text,
    Color color,
    double fontSize,
    TextDecoration decoration
  }) : super(
      text:text,
      color: color,
      fontSize:fontSize,
      fontWeight:FontWeight.w400,
      decoration: decoration
  );
}

class CairoBlackStyle extends CustomTextStyle {
  CairoBlackStyle({
    String text,
    Color color,
    double fontSize,

  }) : super(
    text:text,
    color: color,
    fontSize:fontSize,
    fontWeight:FontWeight.w900,
  );
}

class CairoBoldStyle extends CustomTextStyle {
  CairoBoldStyle({
    @required String text,
    Color color,
    double fontSize,
    TextDecoration decoration


  }) : super(
      text:text,
      color: color,
      fontSize:fontSize,
      fontWeight:FontWeight.w700,
      decoration:decoration

  );
}
class CustomTextStyle extends StatelessWidget {
  const CustomTextStyle({Key key,
    this.fontNameDefault:'Cairo' ,
    this.text,
    this.fontSize,
    this.fontWeight, this.color,this.height, this.decoration}) : super(key: key);
  final String text;
  final String fontNameDefault;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final double height;
  final TextDecoration decoration;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit:BoxFit.contain,
      child: Text(
        text,
        style: TextStyle(
            decoration: decoration,
            fontSize: fontSize,
            fontFamily: fontNameDefault ,
            fontWeight: fontWeight,
            color:color,
            height: height),
      ),
    );
  }
}


class RkezColors {
  static const blueff = const Color(0xFF00B0FF);
  static const purplee = const Color(0xFF7163EE);
  static const purple5f0 = const Color(0xFF5A5CF0);
  static const purple7f0 = const Color(0xFF5D67F0);
  static const greenD4 = const Color(0xFF0ECAD4);
  static const bluede = const Color(0xFF0105DE);
  static const bluee1 = const Color(0xFF2830E1);
  static const purplef0 = const Color(0xFF5B60F0);
  static const black50 = const Color(0xFF323D50);
  static const black0e = const Color(0xFF12100E);
  static const purplecf0 = const Color(0xff5A5CF0);
  static const greyb4 = const Color(0xffA9ADB4);
  static const greend3 = const Color(0xffC5EBD3);
  static const bink3c = const Color(0xffC3D3C);
  static const grey51 = const Color(0xff474E51);
  static const greyf5 = const Color(0xffF2F4F5);
  static const red36 = const Color(0xffF44336);
  static const black35 = const Color(0xff252D35);
  static const black11 = const Color(0xff111111);
  static const grey65 = const Color(0xff4E5665);
  static const grey44 = const Color(0xff444444);
  static const orange48 = const Color(0xffE6AE48);
  static const greenb0= const Color(0xff11ABB0);
  static const greyD9= const Color(0xff5A5CF0);
  static const grey8E = const Color(0xff5D6EEF);
  static const grey66 = const Color(0xFF666666);
  static const grey98 = const Color(0xFF8B9798);
  static const  green6C = const Color(0xff1BC26C);
  static const blueE0 = const Color(0xFF4EA8E0);
  static const purblee = const Color(0xFF7163EE);

}
