import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:model_app/app/controller/home_controller.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:model_app/app/ui/home/widgets/article_widget.dart';
import 'package:model_app/app/ui/home/widgets/markdown_widget.dart';
import 'package:model_app/app/ui/home/widgets/related_widget.dart';
import 'package:model_app/app/ui/home/widgets/relatedcard_widget.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBars.mainAppBar(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                onPressed: ()=> Get.find<HomeController>().popRoute(),
              ),
              actions: [
                PopupMenuButton<String>(
                  // color: Colors.blueGrey[900],
                  onSelected: Get.find<HomeController>().handlePopMenuClick,
                  itemBuilder: (BuildContext context) {
                    return {'Sobre', 'Configurações', 'Sair'}.map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(choice),
                      );
                    }).toList();
                  },
                ),
              ],
              expandedHeight: 200.0,
              pinned: true,// The appbar goes out of the screen on scroll up
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/regia_araci.png",
                      fit: BoxFit.contain,
                      height: 32,
                    ),
                    Text("ARACI.lab", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),)
                  ],
                ),
                background: Image.asset(
                  Get.find<HomeController>().imgPath??"assets/images/regia_araci.png",
                  fit: BoxFit.cover,
                ),
              ),
            )
          ];
        },
        body: WillPopScope(
          onWillPop: ()=>Get.find<HomeController>().popRoute(),
          child: GetBuilder<HomeController>(
//            initState: Get.find<DetailsController>().getArticle(Get.arguments),
              builder: (_) {
                return ListView(
                  children: [
                    article(_),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(child: markdownTitleWidget("# Relacionados"), height: 70,),
                    ),
                    if (_.externalURL != null)
                      ListTile(
                          leading: relatedCard(_.imgPath??"assets/images/regia_araci.png"),
                          title: markdownTitleWidget("Acesse o documento"),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {
                            _.launchUniversalLink(_.externalURL);
                            // Get.toNamed(Routes.WEBVIEW, arguments: {"url":_.externalURL, "title":_.articleTitle});
                          }
                      ),
                    if (Get.find<HomeController>().relatedIds != null)
                      Container(
                        child: relatedArticles(_.relatedArticlesInformation),
                      )
                  ],
                );
              }
          ),
        ),
      ),
    );
  }
}
