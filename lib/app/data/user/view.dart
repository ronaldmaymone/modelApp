import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class userPage extends StatelessWidget {
  final userLogic logic = Get.put(userLogic());
  final userState state = Get.find<userLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
