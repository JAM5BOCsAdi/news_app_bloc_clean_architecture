import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:news_app_bloc_clean_architecture/src/core/constants/constants.dart';

@RoutePage()
class BreakingNewsView extends StatefulWidget {
  const BreakingNewsView({Key? key}) : super(key: key);

  @override
  State<BreakingNewsView> createState() => _BreakingNewsViewState();
}

class _BreakingNewsViewState extends State<BreakingNewsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BreakingNewsView'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.router.pushNamed(kArticleDetailsViewPath);
              },
              child: const Text('Go to ArticleDetailsView'),
            ),
          ],
        ),
      ),
    );
  }
}
