import 'package:meta/meta.dart';
import 'package:model_app/app/data/provider/api.dart';

class UserRepository {
  final MyApiClient apiClient;

  UserRepository({@required this.apiClient}) : assert(apiClient != null);

  bool isLogged(){
    return apiClient.getInformation("isLogged");
  }

  eraseUserInformation() {
    apiClient.eraseUserInformation();
  }

  // getAll() {
  //   return apiClient.getAll();
  // }
}

