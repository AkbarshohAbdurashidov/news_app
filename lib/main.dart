import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/config/theme/app_themes.dart';
import 'package:news_app/features/presentation/block/article/remote/remote_article_bloc.dart';
import 'package:news_app/features/presentation/block/article/remote/remote_article_event.dart';
import 'package:news_app/features/presentation/pages/home/daily_news.dart';
import 'package:news_app/infection_container.dart';

void main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (context) => sl()..add(const GetArticles()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme(),
        home: const DailyNews(),
      ),
    );
  }
}
