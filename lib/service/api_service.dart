// ignore_for_file: avoid_print
import 'package:dio/dio.dart';
import 'package:mobx_ex2/model/top_rated_films_model.dart';

final Dio _dio = Dio(BaseOptions(
  baseUrl: "https://api.themoviedb.org/3/movie/",
));

Future<TopRatedFilmModels?> getTopRatedFilmsService() async {
  TopRatedFilmModels topfilms = TopRatedFilmModels();

  try {
    final response = await _dio.get(
        // tamamı:"top_rated?api_key=1b258cebbacdf3b382888ffa108d4084&language=en-US&page=1"
        "top_rated",
        queryParameters: {
          "api_key": "1b258cebbacdf3b382888ffa108d4084",
          "language": "en-US",
          "page": 1
        });

    topfilms = TopRatedFilmModels.fromJson(response.data);
    if (response.statusCode == 200) {
      print("Başarılı/n${response.data}");
    } else {
      print("Başarısız/n${response.data}");
    }
    print(response.data);
    return topfilms;
    /* Çalışıp çalışmadığını kontrol ediliyor
     if (response.statusCode == 200) {
      print("Çalışıyor");
    } else {
      print("Çalışmıyor");
    } */
  } catch (e) {
    // print(e);
  }

  return null;
}
