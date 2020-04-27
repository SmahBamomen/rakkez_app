import 'package:flutter/material.dart';
import 'package:rkez/parents/main_parents.dart';
import 'package:rkez/style.dart';
import 'package:rkez/teacher/main_teacher.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController;
  TextEditingController passController;
  String emaillabelText;
  String passlabelText;
  Color borderColor = RkezColors.greyb4;
  Color borderColor1 = RkezColors.greyb4;
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passController= TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Image.asset('image/online3.jpg',width: 500,),
            Container(
              margin: EdgeInsets.only(top: 235.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
                  Center(
                    child: CairoBlackStyle(
                      text: 'تسجيل الدخول',
                      fontSize: 20,
                      color: RkezColors.purple5f0,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                      height: 40,
                      margin: EdgeInsets.only(left: 50, right: 50),
                      child: TextFormField(
                        controller: emailController,
                        onChanged: (c) {

                          setState(() {
                            if (c.isNotEmpty) {

                              borderColor = RkezColors.greenb0;
                              emaillabelText = 'الإيميل';
                            } else {
                              borderColor = RkezColors.greyb4;
                              emaillabelText = null;
                            }
                          });
                        },

                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          height: 2.5,
                          fontFamily: 'Cairo',
                          color: RkezColors.black0e,
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 1),
                          labelText: emaillabelText,
                          labelStyle: TextStyle(
                            height: 1,
                            fontFamily: 'Cairo',
                            color: RkezColors.greenb0,
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1.1, color: borderColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1.1, color: borderColor),
                          ),
                          hintStyle: TextStyle(
                            fontFamily: 'Cairo',
                            color: RkezColors.greyb4,
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                          ),
                          hintText: 'ادخل الإيميل',
                        ),
                      )),
                  SizedBox(height: 20),
                  Container(
                      height: 40,
                      margin: EdgeInsets.only(left: 50, right: 50),
                      child: TextField(
                        controller: passController,
                        obscureText: true,
                        onChanged: (c) {

                          setState(() {
                            if (c.isNotEmpty) {

                              borderColor1 = RkezColors.greenb0;
                              passlabelText = 'الرقم السري';
                            } else {
                              borderColor1 = RkezColors.greyb4;
                              passlabelText = null;
                            }
                          });
                        },
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(
                          height: 2.5,
                          fontFamily: 'Cairo',
                          color: RkezColors.black0e,
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 1),
                          labelText: passlabelText,
                          labelStyle: TextStyle(
                            height: 1,
                            fontFamily: 'Cairo',
                            color: RkezColors.greenb0,
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1.1, color: borderColor1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1.1, color: borderColor1),
                          ),
                          hintStyle: TextStyle(
                            fontFamily: 'Cairo',
                            color: RkezColors.greyb4,
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                          ),
                          hintText: 'ادخل الرقم السري',
                        ),
                      )),
                  SizedBox(height: 5),
                  Padding(
                    padding:EdgeInsets.only(right: 60),
                    child: GestureDetector(
                        child: CairoSemiBoldStyle(
                            text:'هل نسيت كلمة المرور؟',
                            decoration: TextDecoration.underline,
                            color: RkezColors.bluede,
                            fontSize:  8.0),
                        onTap: () {}),
                  ),

                  SizedBox(height: 100),
                  Center(
                    child: CustomRaisedButtonGradient(
                      left: 55.0,
                      top: 8.6,
                      right: 55.0,
                      bottom: 8.6,
                      text: 'تسجيل الدخول',
                      fontSize: 15.1,
                      onPressed: () {
                        if (emailController.text == 'hassan@parent.com') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainParents()),
                          );
                        }
                        if (emailController.text == 'ahmed@teacher.com') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainTeacher()),
                          );
                        } else {
                          print(emailController.text);
                          print('error');
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ],

        ));
  }
}

class CustomRaisedButtonGradient extends CustomRaisedButton {
  CustomRaisedButtonGradient({
    @required String text,
    double left,
    top,
    right,
    bottom,
    fontSize,
    VoidCallback onPressed,
  })  : assert(text != null),
        super(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF11ABB0),
                    Color(0xFF5A5CF0),
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            child: CairoSemiBoldStyle(
              text: text,
              color: Colors.white,
              fontSize: fontSize,
            ),
          ),
          onPressed: onPressed,
        );
}

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton(
      {this.child, this.borderRadius: 10.0, this.onPressed, this.padding: 0.0})
      : assert(borderRadius != null);
  final Widget child;
  final double borderRadius, padding;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: child,
      padding: EdgeInsets.all(padding),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
      onPressed: onPressed,
    );
  }
}
