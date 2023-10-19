import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../../core/constants/constants.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: kNewsApiBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  //TODO: Problem: https://stackoverflow.com/questions/66906825/the-method-fromjson-isnt-defined-for-the-type-type?newreg=37b9ac76eaaa4268b8edec61fc7324cb
  // Ok so after doing research and creating an issue in Github Retrofit (https://github.com/trevorwang/retrofit.dart/issues/327) which they didn't respond, i went for searching parsing Json to Map and i found solution to my problem.
  //
  // i.e:
  //
  // For Retrofit Configuration:-
  //
  // @GET("/api/API/CustomerLogin")
  // Future<String> loginCustomer(@Query('id') String email_or_number,
  //     @Query('pass') String pass, @Query('check') String check);
  // Notice above that i used String as response. Now i will convert String into Map using json.decode method.
  //
  // final response = await client.loginCustomer(email_or_number,pass,check);
  // final Map<String,dynamic> map = json.decode(response);

  @GET('/top-headlines')
  // Future<HttpResponse<List<ArticleModel>>>
  Future<String> getNewsArticle({
    @Query('apiKey') String? apiKey,
    @Query('country') String? country,
    @Query('category') String? category,
  });
}
