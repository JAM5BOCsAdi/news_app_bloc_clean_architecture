import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
      body: const SafeArea(
        child: Column(
          children: [
            Text('BreakingNewsView'),
          ],
        ),
      ),
    );
  }
}
