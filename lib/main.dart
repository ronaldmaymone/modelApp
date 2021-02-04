import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'app/binding/splash_binding.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
      GetMaterialApp(
        title: "Model App",
        initialRoute: Routes.SPLASH, //Rota inicial
        // initialBinding: SplashBinding(), // dependencias iniciais
        defaultTransition: Transition.fade, // Transição de telas padrão
        getPages: AppPages.pages, // Seu array de navegação contendo as rotas e suas pages
//        home: HomePage(), // Page inicial
        locale: Locale('pt', 'BR'), // Língua padrão
//        translationsKeys: AppTranslation.translations, // Suas chaves contendo as traduções<map>
      )
  );
}