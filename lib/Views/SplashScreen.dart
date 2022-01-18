import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void loadScreen() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool isLoggedIn = sharedPreferences.get('isLoggedIn')?? false;
    if (isLoggedIn) {
      await Future.delayed(Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, '/dashboard');
      });
    } else {
      await Future.delayed(Duration(seconds: 3), ()
      {
        Navigator.pushReplacementNamed(context, '/login');
      });
    }

  }

  void initState(){
    super.initState();
    loadScreen();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7F9),
      body: Center(
        child: SvgPicture.asset(
          'assets/images/vibrain_logo_w_txt.svg',
          height: 350.0,
          width: 350.0,
          allowDrawingOutsideViewBox: true,
        ),
      )
    );
  }
}
