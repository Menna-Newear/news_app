import 'package:dio/dio.dart';
import 'package:new_news_app/Models/NewsCardModel.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  Future<List<NewsCardModel>> getNews({required String category}) async {
    try {
      Response general_response = await dio.get(
          "https://gnews.io/api/v4/top-headlines?category=$category&apikey=3d2ea0fd476a4672021b536f2b728e11&country=eg");
      Map<String, dynamic> jsonData = general_response.data;
      List<dynamic> articles = jsonData['articles'];
      List<NewsCardModel> newsList = [];
      for (var article in articles) {
        NewsCardModel newsCardModel = NewsCardModel.fromJson(article);
        newsList.add(newsCardModel);
      }
      return newsList;
    } catch (e) {
      return [];
    }
  }
}
