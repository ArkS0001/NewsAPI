import 'package:get/get.dart';
import 'package:news_udemy/Model/news_model.dart';

class NewsHelper extends GetConnect implements GetxService {
  Future<List<NewsModel>> getHeadlines() async {
    Response response = await get(
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=610e8dd6b79442a0b527e23fd634ff6d");
    List data = response.body["articles"];
    List<NewsModel> newsModel = data.map((e) => NewsModel.fromJson(e)).toList();
    return newsModel;
  }

  Future<List<NewsModel>> getNewsCategory({required String category}) async {
    Response response = await get(
        "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=610e8dd6b79442a0b527e23fd634ff6d");
    List data = response.body["articles"];
    List<NewsModel> newsModel = data.map((e) => NewsModel.fromJson(e)).toList();
    return newsModel;
  }
}
