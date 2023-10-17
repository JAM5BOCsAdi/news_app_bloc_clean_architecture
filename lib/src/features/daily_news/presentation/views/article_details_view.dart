import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
      body: const SafeArea(
        child: Column(
          children: [
            Text('ArticleDetailsView'),
          ],
        ),
      ),
    );
  }
}
