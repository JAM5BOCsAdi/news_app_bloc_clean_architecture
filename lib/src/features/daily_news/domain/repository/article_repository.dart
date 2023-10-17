import 'package:news_app_bloc_clean_architecture/src/core/resources/data_state.dart';
import 'package:news_app_bloc_clean_architecture/src/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
