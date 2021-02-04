import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';
import 'package:model_app/app/controller/home_controller.dart';

Widget markdownTitleWidget(String title) {
  return MarkdownBody(data: title);
}

Widget markdownBodyWidget(String body){
  return MarkdownBody(
      data: body,
      onTapLink: (body,link,title) {
        Get.find<HomeController>().launchUniversalLink(link);
      }
  );
}