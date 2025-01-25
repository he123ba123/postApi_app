import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nti_two/data/models/post_model.dart';

class PostData {
  Future<List<PostModel>> getPostData() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products/category/electronics"));
    if (response.statusCode == 200) {
      List jsonBody = json.decode(response.body);
      List<PostModel> listPost =
          jsonBody.map((item) => PostModel.fromJson(item)).toList();
      return listPost;
    } else {
      throw Exception("faluier");
    }
  }
}

