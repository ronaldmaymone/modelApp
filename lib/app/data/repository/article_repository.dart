import 'dart:async';

import 'package:meta/meta.dart';
import 'package:model_app/app/data/provider/api.dart';

class ArticleRepository {
  final MyApiClient apiClient;

  ArticleRepository({@required this.apiClient}) : assert(apiClient != null);

  FutureOr<dynamic> findArticleById(int id){
    return apiClient.findArticleById(id);
  }

  FutureOr<dynamic> getAllArticles(){
    return apiClient.getAllArticles();
  }
}

