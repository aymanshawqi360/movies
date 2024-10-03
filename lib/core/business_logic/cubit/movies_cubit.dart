// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:movies_app/core/data/model/movies_api.dart';
import 'package:movies_app/core/data/model/videos_action_api.dart';
import 'package:movies_app/core/data/repository/repository_movies.dart';

part 'movies_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  final RepositoryMovies repositoryMovies;
  List<MoviesApi> movies = [];
  // List<VideosActionApi> moviesVideosAction = [];
  // List<MoviesApi> favorit = [];

  MoviesCubit(
    this.repositoryMovies,
  ) : super(MoviesInitial());

  List<MoviesApi> getMoviesCubit() {
    repositoryMovies.getRepositoryMovies().then((value) {
      movies = value;
      emit(Loaded(moviesList: value));
    });
    return movies;
  }

  // void getAddMoviesFavorite(
  //   MoviesApi moviesApi,
  // ) {
  //   // emit(PagesInitial());
  //   final user = favorit.any((test) => test.id == moviesApi.id);
  //   if (!user) {
  //     favorit.add(moviesApi);
  //     emit(FavoriteLoadedMovies(moviesFavoriteLoaded: favorit));
  //   }

  //   // return favorit;
  // }

  /////////////////////////////////////////////////////////////////
  ///(baseurlVideos)
  // List<VideosActionApi> getMoviesVideosActionCubit() {
  //   repositoryMovies.getRepositoryMoviesVideosAction().then((value) {
  //     moviesVideosAction = value;
  //     emit(LoadedVideosAction(moviesListVideosAction: value));
  //   });
  //   return moviesVideosAction;
  // }

  void currentIndex({required int index}) {
    // int index = 0;
    emit(CurrentIndexPages(numberIndex: index));
  }

  /////////////////////////////////////////////////////////////////
  // void displayMoviesIndex({required int displayIndex}) {
  //   // numberIndex = displayIndex;
  //   emit(DisplayMovies(index: displayIndex));
  // }

  // void getNumberIndex({required int number}) {
  //   emit(NumberIndex(numberIndex: number));
  // }
  // List<MoviesApi> getActionMovies(List<MoviesApi> fff) {
  //   return fff = movies.where((e) => e.genreIds.contains(28)).toList();
  // }

  // List<MoviesApi> actionMovies = movies.where((movie) {
  //   //this is movies
  //   return movie.genreIds.contains(28);
  // }).toList();
}
