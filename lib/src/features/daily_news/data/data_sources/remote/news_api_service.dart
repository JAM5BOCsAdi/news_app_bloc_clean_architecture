// import 'dart:io';
//
// import 'package:dio/dio.dart';
// import 'package:retrofit/http.dart';
//
// import '../../../../../core/constants/constants.dart';
//
// part 'news_api_service.g.dart';
//
// @RestApi(baseUrl: kNewsApiBaseUrl)
// abstract class NewsApiService {
//   factory NewsApiService(Dio dio) = _NewsApiService;
//
//   // Future<HttpResponse<List<ArticleModel>>>
//   @GET('/top-headlines')
//   Future<HttpResponse> getNewsArticle({
//     @Query('apiKey') String? apiKey,
//     @Query('country') String? country,
//     @Query('category') String? category,
//   });
// }
