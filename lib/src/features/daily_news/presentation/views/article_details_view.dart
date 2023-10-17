import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:news_app_bloc_clean_architecture/src/core/constants/constants.dart';

@RoutePage()
class ArticleDetailsView extends StatefulWidget {
  const ArticleDetailsView({Key? key}) : super(key: key);

  @override
  State<ArticleDetailsView> createState() => _ArticleDetailsViewState();
}

class _ArticleDetailsViewState extends State<ArticleDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ArticleDetailsView'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.router.pushNamed(kSavedArticlesViewPath);
              },
              child: const Text('Go to SavedArticlesView'),
            ),
          ],
        ),
      ),
    );
  }
}
