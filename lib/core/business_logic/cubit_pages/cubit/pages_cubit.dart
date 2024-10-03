// import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:movies_app/core/data/model/movies_api.dart';

part 'pages_state.dart';

class PagesCubit extends Cubit<PagesState> {
  List<MoviesApi> favorit = [];
  List<MoviesApi> save = [];
  List<int> id = [];
  int numberIndex = 0;
  bool c = false;
  String? nulll;

  PagesCubit() : super(PagesInitial());

  void getAddMoviesFavorite(
    MoviesApi moviesApi,
  ) {
    final user = favorit.any((test) => test.id == moviesApi.id);
    if (!user) {
      favorit.add(moviesApi);
      emit(FavoriteLoaded(moviesFavoriteLoaded: favorit));
    } else {
      favorit.removeWhere((test) => test.id == moviesApi.id);
      emit(FavoriteLoading(moviesFavoriteLoading: favorit));
    }
  }

  int numberFavorite() {
    return favorit.length;
  }

  // void getRemoveMoviesFavorite(MoviesApi moviesApi) {
  //   // final remove=favorit.any((test)=>test)
  //   favorit.remove(moviesApi);
  //   // ff = true;
  //   emit(FavoriteLoaded(
  //     moviesFavoriteLoaded: favorit,
  //   ));
  //   // return favorit;
  // }

  // Future<void> saveFavoriteMovies(List<MoviesApi> movis) async {
  //   final prefs = await SharedPreferences.getInstance();

  //   final moviesJsonList =
  //       movis.map((movie) => jsonEncode(movie.toJson())).toList();

  //   prefs.setStringList('favorite_movies', moviesJsonList);
  // }

  // Future<List<MoviesApi>> loadFavoriteMovies() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final List<String>? moviesJsonList = prefs.getStringList('favorite_movies');
  //   if (moviesJsonList != null) {
  //     return moviesJsonList
  //         .map<MoviesApi>(
  //             (movieJson) => MoviesApi.fromJson(jsonDecode(movieJson)))
  //         .toList();
  //   }
  //   return [];
  // }

  // Future<void> loadFavoritesOnStart() async {
  //   final favorit = await loadFavoriteMovies();
  //   emit(FavoriteLoaded(moviesFavoriteLoaded: favorit)); // تحديث واجهة المستخدم
  // }
}
