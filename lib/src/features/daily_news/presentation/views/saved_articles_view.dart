import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:news_app_bloc_clean_architecture/src/core/constants/constants.dart';

@RoutePage()
class SavedArticlesView extends StatefulWidget {
  const SavedArticlesView({Key? key}) : super(key: key);

  @override
  State<SavedArticlesView> createState() => _SavedArticlesViewState();
}

class _SavedArticlesViewState extends State<SavedArticlesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SavedArticlesView'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.router.pushNamed(kBreakingNewsViewPath);
              },
              child: const Text('Go to BreakingNewsView'),
            ),
          ],
        ),
      ),
    );
  }
}
