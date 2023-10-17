import 'package:auto_route/auto_route.dart';

import '../../core/constants/constants.dart';
import '../../features/daily_news/presentation/views/article_details_view.dart';
import '../../features/daily_news/presentation/views/breaking_news_view.dart';
import '../../features/daily_news/presentation/views/saved_articles_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: BreakingNewsViewRoute.page,
          initial: true,
          path: kBreakingNewsViewPath,
        ),
        AutoRoute(
          page: ArticleDetailsViewRoute.page,
          path: kArticleDetailsViewPath,
        ),
        AutoRoute(
          page: SavedArticlesViewRoute.page,
          path: kSavedArticlesViewPath,
        ),
      ];
}
