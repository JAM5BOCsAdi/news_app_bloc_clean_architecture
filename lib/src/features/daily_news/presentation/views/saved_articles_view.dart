import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
      body: const SafeArea(
        child: Column(
          children: [
            Text('SavedArticlesView'),
          ],
        ),
      ),
    );
  }
}
