import 'package:flutter_app_chamada/models/post_model.dart';

abstract class HomeReposity {

  Future<List<PostModel>> getList();

}