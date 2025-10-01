import 'package:dio/dio.dart';
import 'package:flutter_app_chamada/models/post_model.dart';
import 'package:flutter_app_chamada/reposity/home_reposity.dart';

class HomeReposityImp  implements HomeReposity{
    @override
  Future<List<PostModel>> getList() async{
    try{
      var response = await Dio().get('https://parallelum.com.br/fipe/api/v1/carros/marcas');
      return(response.data as List).map((e) => PostModel.fromJson(e)).toList();
    }catch(e){
      print(e);
    }
    return [];
  }
}