import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';
import 'package:model_app/app/controller/home_controller.dart';
import 'package:model_app/app/ui/home/widgets/relatedcard_widget.dart';

Widget relatedArticles(List<Map<String, dynamic>> relatedList) {
  return Container(
    child: ListView.builder(
        shrinkWrap: true,
        itemCount: relatedList.length??0,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              leading: relatedCard(relatedList[index]["imgPath"]??"assets/images/regia_araci.png"),
              title: MarkdownBody(data: relatedList[index]["title"]??""),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {print("ON TAP!!");Get.find<HomeController>().pushRoute(relatedList[index]["id"]);}
          );
        }
    ),
  );
}