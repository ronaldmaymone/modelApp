import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:model_app/app/data/provider/api.dart';
import 'package:model_app/app/data/repository/user_repository.dart';
import 'package:model_app/app/routes/app_pages.dart';
import 'package:model_app/app/ui/home/home_page.dart';
import 'package:model_app/app/ui/login/login_page.dart';

class SplashController extends GetxController {

  // final _obj = ''.obs;
  // set obj(value) => _obj.value = value;
  // get obj => _obj.value;

  final UserRepository repository;
  SplashController({@required this.repository}) : assert(repository != null);

  bool isLogged;
  // @override
  // void onInit() async {
  //   super.onInit();
  // }

  @override
  void onReady() async {
    super.onReady();
    // await getLoginStatus();
    Future.delayed(Duration(seconds: 2), () => Get.offNamed(repository.isLogged() ? Routes.HOME : Routes.LOGIN));
  }


}

// class SplashMiddleware extends GetMiddleware{
//   final UserRepository repository = UserRepository(apiClient: MyApiClient());
//   @override
//   onPageBuilt(page) {
//     print("ON PAGE BUILD START!");
//     return repository.isLogged() ? HomePage() : LoginPage();
//
//     Get.offNamed(repository.isLogged() ? Routes.HOME : Routes.LOGIN);
//   }
// }