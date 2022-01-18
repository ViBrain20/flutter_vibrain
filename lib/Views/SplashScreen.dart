import 'package:flutter/material.dart';
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
      await Future.delayed(Duration(seconds: 5), () {
        print(sharedPreferences.getString('token'));
        Navigator.pushReplacementNamed(context, '/dashboard');
      });
    } else {
      Navigator.pushReplacementNamed(context, '/login');
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
        child: Image.asset(
            'assets/images/vibrain_logo_w_txt.svg',
            width: 200.0,
            scale: 0.8
        ),
      )
    );
  }
}
