import 'dart:async';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

const baseUrl = 'http://gerador-nomes.herokuapp.com/nomes/10';

class MyApiClient {
  final storage = GetStorage();

  MyApiClient();

  List<Map<String ,dynamic>> articleMap =
  [{"id": 2,"title":"**Documentário e história**","body":"Coube ao historiador francês [Marc Ferro](https://revistas.ufpr.br/historia/article/view/2713) de incluir definitivamente o filme como um documento passível de ser uma fonte para o estudo da história. Para ele, “o filme deve ser associado ao mundo que o produz. A hipótese? Que o filme, imagem ou não da realidade, documento ou ficção, intriga autêntica ou pura invenção, é História; o postulado? Que o que não aconteceu (e por que não, também o que aconteceu), as crenças, as intenções, o imaginário do homem, são tão História quanto a História”. Com esta possibilidade, abriu-se a perspectiva não apenas de obras que davam pistas sobre o passado da humanidade, mas também obras reflexivas que revisitam momentos históricos através de imagens de arquivo, depoimentos e outros recursos audiovisuais.","videoURL":null, "imgPath":null,"imgURL":null, "externalURL":null,"related":[4]},
    {"id": 1,"title":"**Silvio Tendler**","body":"Silvio Tendler (Rio de Janeiro, 1950) Seus filmes mais conhecidos são [Os anos JK - Uma trajetória política](https://www.youtube.com/watch?v=Qe6RGrCE2fc) (1980) e  [Jango](https://www.youtube.com/watch?v=52lBqoB-OcQ) (1984). Ambos foram produzidos durante a abertura política no Brasil. Considerados na fronteira entre **documentário**, **história** e política, os dois títulos traçaram o retrato de dois presidentes eleitos pelo voto popular e buscaram rememorar o cenário democrático do Brasil pré-ditadura militar. Tendler tem mais de 80 trabalhos audiovisuais entre longas e curtas-metragens, séries, programas para a TV e a internet, e vídeos-instalações. Além do tom político, outras marcas da obra do diretor são o registro de **depoimentos** e o uso de material de arquivo. Seu mais recente trabalho é Nas asas da Pam Am (2020) um filme-ensaio que conta a história do próprio autor narrado na primeira pessoa.","videoURL":null, "imgPath":"assets/images/regia_araci.png","imgURL":null,"externalURL":null,"related":[2,3]},
    {"id": 3,"title":"**Depoimento**","body":" É bastante frequente nos documentários o uso de testemunho de pessoas que tenham relação direta ou indireta com o tema abordado. Trata-se de um recurso que registra muitas vezes tanto imagem como som do entrevistado e deve-se implementar uma boa pesquisa que traga pontos importantes e originais sobre o personagem e o assunto do filme. Em geral, é preciso construir uma relação de confiança entre entrevistado e entrevistador para que as informações fornecidas na gravação tenham clareza e possam ser articuladas na montagem do filme auxiliando no seu aspecto discursivo e narrativo.","videoURL":null, "imgPath":null,"imgURL":null,"externalURL":null,"related":[4]},
    {"id": 4,"title":"**A Problemática da Entrevista e do Depoimento no Documentário Brasileiro Contemporâneo**","body":"Link para o documento abaixo em RelacionadosLink para o documento abaixo em RelacionadosLink para o documento abaixo em RelacionadosLink para o documento abaixo em RelacionadosLink para o documento abaixo em RelacionadosLink para o documento abaixo em RelacionadosLink para o documento abaixo em RelacionadosLink para o documento abaixo em RelacionadosLink para o documento abaixo em RelacionadosLink para o documento abaixo em Relacionados","externalURL":"http://www.portcom.intercom.org.br/pdfs/151759236119685720944875553590913296104.pdf","videoURL":null,"imgPath":null,"imgURL":null,"related":null}
  ];

  // final Map<String, String> _defaultHeaders = {
  //   'Content-Type': 'application/json'
  // };

  getInformation(String key){
    // storage = Get.find<GetStorage>();
    print("information saved = ${storage.read(key)}");
    return storage.read(key)??false;
  }

  FutureOr<Map<String, dynamic>> findArticleById(int id){
    for (Map<String, dynamic> map in articleMap) {
      if(map["id"] == id) {
        // print("Titulo dentro do databaseApi::::: ${map["title"]}");
        return map;
      }
    }
    return null;
  }

  FutureOr<List<Map<String, dynamic>>> getAllArticles(){
    return articleMap;
  }

  eraseUserInformation() {
    // storage = Get.find<GetStorage>();
    storage.erase();
  }


// Future<List<MyModel>> getAll() async {
  //   try {
  //     final response = await httpClient.get(baseUrl);
  //     if (response.statusCode == 200) {
  //       Map<String, dynamic> jsonResponse = jsonDecode(response.body);
  //       return jsonResponse['data']
  //           .map((json) => MyModel.fromJson(json))
  //           .toList();
  //     } else {
  //       print('Error -getAll');
  //     }
  //   } catch (_) {}
  //   return null;
  // }
  //
  // Future getId(id) async {
  //   try {
  //     final response = await httpClient.get(baseUrl);
  //     if (response.statusCode == 200) {
  //       Map<String, dynamic> jsonResponse = jsonDecode(response.body);
  //       // TODO: implement methods!
  //     } else{
  //       print('Error -getId');
  //     }
  //   } catch (_) {}
  //   return null;
  // }
  //
  // Future add(obj) async {
  //   try {
  //     final response = await httpClient.post(baseUrl,
  //         headers: _defaultHeaders, body: jsonEncode(obj));
  //     if (response.statusCode == 200) {
  //       // TODO: implement methods!
  //     } else {
  //       print('Error -add');
  //     }
  //   } catch (_) {}
  //   return null;
  // }
  //
  // Future edit(obj) async {
  //   try {
  //     final response = await httpClient.put(baseUrl,
  //         headers: _defaultHeaders, body: jsonEncode(obj));
  //     if (response.statusCode == 200) {
  //       // TODO: implement methods!
  //     } else {
  //       print('Error -edit');
  //     }
  //   } catch (_) {}
  //   return null;
  // }
  //
  // Future delete(obj) async {
  //   try {
  //     final response = await httpClient.delete(baseUrl);
  //     if (response.statusCode == 200) {
  //       // TODO: implement methods!
  //     } else {
  //       print('Error -delete');
  //     }
  //   } catch (_) {}
  //   return null;
  // }
}