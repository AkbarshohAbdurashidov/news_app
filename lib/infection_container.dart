import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:news_app/features/data/data_sources/remote/news_api_service.dart';
import 'package:news_app/features/data/repository/article_repository_impl.dart';
import 'package:news_app/features/domain/repository/article_repository.dart';
import 'package:news_app/features/domain/usecases/get_article.dart';
import 'package:news_app/features/presentation/block/article/remote/remote_article_bloc.dart';

final sl = GetIt.asNewInstance();

Future<void> initializeDependencies() async {
  sl.registerSingleton<Dio>(Dio());

  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));

  sl.registerSingleton<ArticleRepository>(ArticleRepositoryImpl(sl()));

  sl.registerSingleton<GetArticleUseCase>(GetArticleUseCase(sl()));

  sl.registerFactory<RemoteArticlesBloc>(() => RemoteArticlesBloc(sl()));
}
