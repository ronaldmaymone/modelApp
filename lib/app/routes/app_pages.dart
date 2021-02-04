import 'package:get/get.dart';
import 'package:model_app/app/binding/home_binding.dart';
import 'package:model_app/app/binding/login_binding.dart';
import 'package:model_app/app/binding/splash_binding.dart';
import 'package:model_app/app/controller/splash_controller.dart';
import 'package:model_app/app/ui/home/home_page.dart';
import 'package:model_app/app/ui/login/login_page.dart';
import 'package:model_app/app/ui/splash/splash_page.dart';
part './app_routes.dart';

abstract class AppPages {

  static final pages = [
    GetPage(name: Routes.SPLASH, page:()=> SplashPage(),binding: SplashBinding()),
    GetPage(name: Routes.LOGIN, page: ()=> LoginPage(), binding: LoginBinding()),
    GetPage(name: Routes.HOME, page:()=> HomePage(), binding: HomeBinding()),
  ];
}