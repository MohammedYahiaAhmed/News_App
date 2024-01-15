// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/categorys_list_view.dart';
import 'package:news_app/widgets/new_list_view_builder.dart';
// import 'package:news_app/widgets/news_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(fontSize: 24, color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            SliverToBoxAdapter(
                child: SizedBox(
              height: 32,
            )),
            NewsListViewBuilder(
              caregory: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
