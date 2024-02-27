import 'package:dio/dio.dart';
import 'package:news_app/features/data/models/article.dart';
import 'package:retrofit/retrofit.dart';

part 'news_api_service.g.dart';

@RestApi()
abstract class NewsApiService {
  factory NewsApiService(Dio dio, {String baseUrl}) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticle({
    @Query("apikey") String? apikey,
    @Query("country") String? country,
    @Query("category") String? category,
  });
}
