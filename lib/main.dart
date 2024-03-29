// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:news_app/services/news_services.dart';
import 'views/home_page.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
