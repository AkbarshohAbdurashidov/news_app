import 'package:equatable/equatable.dart';
import 'package:dio/src/dio_error.dart';

import 'package:news_app/features/domain/entities/article.dart';

abstract class RemoteArticleState extends Equatable{
  final List<ArticleEntity>? articles;
  final DioError ? error;
  const RemoteArticleState({this.articles,this.error});

@override
List<Object>get props=>[articles!,error!];

  }


class RemoteArticlesLoading extends RemoteArticleState{
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteArticleState{
  const RemoteArticlesDone(List<ArticleEntity>article):super(articles: article);
}
class RemoteArticlesError extends RemoteArticleState{
  const RemoteArticlesError(DioError error):super(error: error);
}
