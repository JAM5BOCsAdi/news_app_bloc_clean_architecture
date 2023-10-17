// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ArticleDetailsViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ArticleDetailsView(),
      );
    },
    BreakingNewsViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BreakingNewsView(),
      );
    },
    SavedArticlesViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SavedArticlesView(),
      );
    },
  };
}

/// generated route for
/// [ArticleDetailsView]
class ArticleDetailsViewRoute extends PageRouteInfo<void> {
  const ArticleDetailsViewRoute({List<PageRouteInfo>? children})
      : super(
          ArticleDetailsViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ArticleDetailsViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BreakingNewsView]
class BreakingNewsViewRoute extends PageRouteInfo<void> {
  const BreakingNewsViewRoute({List<PageRouteInfo>? children})
      : super(
          BreakingNewsViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'BreakingNewsViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SavedArticlesView]
class SavedArticlesViewRoute extends PageRouteInfo<void> {
  const SavedArticlesViewRoute({List<PageRouteInfo>? children})
      : super(
          SavedArticlesViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'SavedArticlesViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
