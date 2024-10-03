// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'movies_cubit.dart';

@immutable
sealed class MoviesState {}

final class MoviesInitial extends MoviesState {}

// class Loading extends MoviesState {}

class Loaded extends MoviesState {
  final List<MoviesApi> moviesList;
  Loaded({required this.moviesList});
}

// class FavoriteLoadedMovies extends MoviesState {
//   final List<MoviesApi> moviesFavoriteLoaded;
//   // final bool f;
//   // final List<int> id;
//   FavoriteLoadedMovies({
//     required this.moviesFavoriteLoaded,
//     // required this.id,
//   });
// }

// class LoadedVideosAction extends MoviesState {
//   final List<VideosActionApi> moviesListVideosAction;
//   LoadedVideosAction({
//     required this.moviesListVideosAction,
//   });
// }

class CurrentIndexPages extends MoviesState {
  final int numberIndex;
  CurrentIndexPages({required this.numberIndex});
}

// class DisplayMovies extends MoviesState {
//   final int index;

//   DisplayMovies({required this.index});
// }



// }
