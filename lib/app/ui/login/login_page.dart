import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:model_app/app/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: Container(
        child: GetX<LoginController>(
            init: LoginController(),
            builder: (_) {
              return Container();
            }),
      ),
    );
  }
}
