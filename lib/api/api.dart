import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import 'models/models.dart';

part 'api.g.dart';

@RestApi(baseUrl: '')
abstract class RhymerApiClient {
  factory RhymerApiClient(Dio dio, {String baseUrl}) = _RhymerApiClient;

  factory RhymerApiClient.create({String? apiUrl}) {
    final dio = Dio();
    dio.options.headers = {
      "X-API-Key": dotenv.env['API_KEY']!,
      "Authorization": 'Bearer ${dotenv.env["API-TOKEN"]!}',
    };
    if (apiUrl != null) {
      return RhymerApiClient(dio, baseUrl: apiUrl);
    }
    return RhymerApiClient(dio);
  }

  @GET('/rhyme/get')
  Future<Rhymes> getRhymesList(@Query("word") String word);
}
