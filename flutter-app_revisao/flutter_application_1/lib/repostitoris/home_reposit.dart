import 'package:flutter_application_1/models/post_model.dart';

abstract class HomeReposit {

  Future<List<PostModel>> getList();

}