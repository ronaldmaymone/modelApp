import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:model_app/app/controller/splash_controller.dart';
import 'package:model_app/app/data/provider/api.dart';
import 'package:model_app/app/data/repository/user_repository.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() async {
    Get.put<SplashController>(SplashController(repository: UserRepository(apiClient: MyApiClient())));
    // Get.putAsync<GetStorage>(() async {
    //   print("PUTTING GET ASSYNC!");
    //   final storage = GetStorage();
    //   await GetStorage.init();
    //   storage.write("isLogged", true);
    //   print("FINISHD PUTTING GET ASSYNC!");
    //   return storage;
    // });


    await GetStorage.init();
    GetStorage().write("isLogged", true);

    // Get.putAsync<APICredentials>(() async {
    //   APICredentials apiCredentials = APICredentials();
    //   await apiCredentials.loadApiCredentials("assets/uffapi.json");
    //   return apiCredentials;
    // });
  }
}

