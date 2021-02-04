import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:model_app/app/controller/splash_controller.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFFC335FF),
                    Color(0xFF59FF4D)
                  ],
                )
            ),
          ),
          Center(
            child: Container(
              child: Image.asset(
                "assets/images/regia_araci.png",
                alignment: Alignment.center,
              ),
              padding: EdgeInsets.all(100),
            ),
          ),
        ],
      ),
    );
  }
}
