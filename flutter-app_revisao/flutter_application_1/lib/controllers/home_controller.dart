import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/models/post_model.dart';
import 'package:flutter_application_1/repostitoris/home_reposit.dart';

class HomeController {
  final HomeReposit _homeReposit;
  HomeController(this._homeReposit);

  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);

  fetch() async{
    posts.value = await _homeReposit.getList();
  }
}