import 'package:flutter/material.dart';
import 'package:model_app/app/controller/home_controller.dart';
import 'markdown_widget.dart';

Widget article(HomeController controller) {
  return Column(
    children: [
      // if (controller.imgPath != null) imageCard(controller.imgPath),
      // if (controller.videoURL != null) ytWidget(),
      // controller.imgPath != null ? imageCard(
      //     controller.imgPath) : Container(),
      // controller.videoURL != null ? ytWidget() : Container(),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(child: markdownTitleWidget("# ${controller
            .articleTitle}" ?? "")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(child: markdownBodyWidget(controller.articleBody ?? "")),
      )
    ],
  );
}