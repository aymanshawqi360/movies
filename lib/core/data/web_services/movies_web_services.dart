import 'package:dio/dio.dart';
import 'package:movies_app/core/constants/string_baseurl_api.dart';

class MoviesWebServices {
  late Dio dio;
  MoviesWebServices() {
    BaseOptions baseOptions = BaseOptions(
      // baseUrl: baseurl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    );
    dio = Dio();
  }

  Future<List<dynamic>> getMoviesWebServices() async {
    try {
      Response response = await dio.get(baseurl);

      print(response.data.toString());
      return response.data["results"];
    } catch (error) {
      print(error);
      return [];
    }
  }

  //////////////////////////////////////////////////////////////
  //(baseurlPopular)
  Future<List<dynamic>> getMoviesWebServicesVideosAction() async {
    try {
      Response response = await dio.get(baseurlVideosAction);

      print(response.data.toString());
      return response.data["results"];
    } catch (error) {
      print(error);
      return [];
    }
  }
}
