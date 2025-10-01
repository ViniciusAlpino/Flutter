import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_app_chamada/models/post_model.dart';
import 'package:flutter_app_chamada/reposity/home_reposity.dart';

class HomeReposityMock implements HomeReposity{
  Future<List<PostModel>> getList() async{
    var value = await rootBundle.loadString('assets/data.json');
    List postsjson = jsonDecode(value);
    return postsjson.map((e) => PostModel.fromJson(e)).toList();
  }
}