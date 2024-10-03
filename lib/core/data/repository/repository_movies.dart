import 'package:movies_app/core/data/model/movies_api.dart';
import 'package:movies_app/core/data/model/videos_action_api.dart';
import 'package:movies_app/core/data/web_services/movies_web_services.dart';

class RepositoryMovies {
  final MoviesWebServices moviesWebServices;
  RepositoryMovies({required this.moviesWebServices});
  Future<List<MoviesApi>> getRepositoryMovies() async {
    final movies = await moviesWebServices.getMoviesWebServices();
    return movies.map((json) => MoviesApi.fromjson(json)).toList();
  }

  //////////////////////////////////////////////////////////////////////////
  //(baseurlViseos)
  Future<List<VideosActionApi>> getRepositoryMoviesVideosAction() async {
    final movies = await moviesWebServices.getMoviesWebServicesVideosAction();
    return movies
        .map((jsonVideos) => VideosActionApi.fromjson(jsonVideos))
        .toList();
  }
}
