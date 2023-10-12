import 'package:dio/dio.dart';
import 'package:news/models/models.dart';

class NewsService {
  String API_KEY = "f4b31ec383f1423dbaf8c61f9bf85bcb";
  Dio dio;
  // Category category;
  NewsService(this.dio);

  Future<List<Post>> getNews(String category) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?category=$category&country=us&apiKey=$API_KEY");
      List jsonData = response.data["articles"];

      List<Post> posts = [];

      for (var post in jsonData) {
        Post postitem = Post.fromJson(post);
        posts.add(postitem);
      }

      return posts;
    } catch (e) {
      return [];
    }
  }
}
