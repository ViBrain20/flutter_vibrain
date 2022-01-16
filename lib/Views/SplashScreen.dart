import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 260.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.svg',
                width: 200.0,
              ),
            ],
          ),
          SizedBox(
            height: 200.0,
          ),
          Text(
            'ViBrain',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              color: Colors.grey,
              fontSize: 15.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'ALL RIGHTS RESERVED',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w300,
              color: Colors.grey,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
