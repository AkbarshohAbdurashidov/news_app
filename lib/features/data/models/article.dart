import 'package:news_app/features/domain/entities/article.dart';

class ArticleModel extends ArticleEntity {
  const ArticleModel(
      {required super.id,
      required super.author,
      required super.title,
      required super.description,
      required super.url,
      required super.urlToImage,
      required super.publishedAt,
      required super.content});

  @override
  List<Object?> get props {
    return [
      id,
      author,
      title,
      description,
      url,
      urlToImage,
      publishedAt,
      content,
    ];
  }

  static fromJson(Map<String, dynamic> i) {}
}
