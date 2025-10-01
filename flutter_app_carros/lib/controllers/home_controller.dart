import 'package:flutter/widgets.dart';
import 'package:flutter_app_chamada/models/post_model.dart';
import 'package:flutter_app_chamada/reposity/home_reposity.dart';

class HomeController {
  final HomeReposity _homeReposity;
  HomeController(this._homeReposity);


  ValueNotifier<List<PostModel>> posts =  ValueNotifier<List<PostModel>>([]);


  fetch() async{
    posts.value = await _homeReposity.getList();
  }
}
