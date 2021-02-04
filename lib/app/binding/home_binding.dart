
import 'package:get/get.dart';
import 'package:model_app/app/controller/home_controller.dart';
import 'package:model_app/app/data/provider/api.dart';
import 'package:model_app/app/data/repository/article_repository.dart';
import 'package:model_app/app/data/repository/user_repository.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<HomeController>(
        HomeController(
        articleRepository: ArticleRepository(apiClient: MyApiClient()),
        userRepository: UserRepository(apiClient: MyApiClient())
    ));

  }
}