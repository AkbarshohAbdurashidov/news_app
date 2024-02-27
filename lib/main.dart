import 'package:flutter/material.dart';
import 'package:news_app/config/theme/app_themes.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: DailyNews(),
    );
  }
}
